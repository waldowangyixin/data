# -*- coding: utf-8 -*-

import os
import sys
import logging
import argparse
import MySQLdb
import slugify
import tldextract

logger = logging.getLogger('tldextract')
HOST = '52.9.95.245'
DB = 'discountsnetin'
USER = 'mbyte_coupon'
PASSWD = 'coupon_@Web123'

con = MySQLdb.connect(host = HOST, user=USER, db=DB, passwd=PASSWD, charset='utf8')


def insert_one_store(con, cursor, kw):
    cursor.execute('''SELECT id FROM coupon_base_coupontagsmap WHERE domain =
                   "{domain}" AND slug = "{slug}"'''.format(**kw))
    if cursor.rowcount == 1:
        print '{domain}\t{slug} exists'.format(**kw)
        return 0
    elif cursor.rowcount < 0:
        print '{domain}\t{slug} error occurred'.format(**kw)
        return -1
    kw.update({'tag': con.escape_string(kw['tag'])})
    try:
        cursor.execute('''INSERT coupon_base_coupontagsmap (domain, tags, slug,
                       store_name) VALUE("{domain}", "{tag}", "{slug}",
                       "{store_name}")'''.format(**kw))
        con.commit()
    except Exception as e:
        con.rollback()
        print repr(e)
        return -1
    return cursor.rowcount


def read_stores(filepath):
    with open(filepath, 'r') as f:
        for line in f:
            if line.startswith('#'):
                continue
            data_wrapper = {}
            domain, tag = line.lower().strip().split('\t')
            domain = domain.strip()
            tag = tag.strip()
            slug = slugify.slugify(tag)
            store_name = tldextract.extract(domain).domain
            if slug:
                yield {
                    'domain': domain,
                    'tag': tag,
                    'slug': slug,
                    'store_name': store_name,
                }


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('input_file')
    args = parser.parse_args()
    filepath = args.input_file
    if not os.path.isfile(filepath):
        print 'input file {} not exists'.format(filepath)
        sys.exit(1)
    with con:
        cursor = con.cursor()
        for kw in read_stores(filepath):
            count = insert_one_store(con, cursor, kw)
            if count == 0:
                continue
            elif count < 0:
                print 'insert {domain}\t{tag} failed'.format(**kw)
            else:
                print 'insert {domain}\t{tag} succeeded'.format(**kw)
