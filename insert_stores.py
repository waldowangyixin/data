# -*- coding: utf-8 -*-

import os
import sys
import argparse
import MySQLdb
import slugify
import tldextract

HOST = '192.168.1.114'
DB = 'vouchercodesmeuk'
USER = 'mbyte_coupon'
PASSWD = 'coupon_@Web123'
con = MySQLdb.connect(host=HOST, user=USER, db=DB, passwd=PASSWD, charset='utf8')


def insert_one_store(kw):
    cursor = con.cursor()
    kw.update({'tag': con.escape_string(kw['tag'])})
    try:
        cursor.execute('insert coupon_base_coupontagsmap(domain, tags,'
                    'slug, store_name) value("{domain}", "{tag}",'
                       '"{slug}", "{store_name}")'
                       .format(**kw))
        con.commit()
        #cursor.execute('insert coupon_base_coupontagsmap(domain, tags,'
          #             'slug, store_name) value("{domain}", "{tag}",'
         #              '"{slug}", "{store_name}")'
        #               .format(**kw))
       # con.commit()
    except Exception as e:
        con.rollback()
        print repr(e)
        return -1
    finally:
        cursor.close()
    return cursor.rowcount


def read_stores(filepath):
    with open(filepath, 'r') as f:
        for line in f:
            if line.startswith('#'):
                continue
            data_wrapper = {}

            domain, tag= line.lower().strip('\r\n').split('\t')
            slug = slugify.slugify(tag)
            store_name = tldextract.extract(domain).domain

            # print store_name
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
    for kw in read_stores(filepath):
        if insert_one_store(kw) < 0:
            print 'insert {domain}\t{tag} failed'.format(**kw)
        else:
            print 'insert {domain}\t{tag} succeeded'.format(**kw)
    con.close()
