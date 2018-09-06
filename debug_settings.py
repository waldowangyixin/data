DEBUG = True


ALLOWED_HOSTS = ['*']


MIDDLEWARE = (
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.auth.middleware.SessionAuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'django.middleware.security.SecurityMiddleware',
    'corsheaders.middleware.CorsMiddleware',
    'coupon_base.middleware.redirect_middleware.RedirectMiddleware',
)


# Settings for product searcher.
SEARCH_SETTINGS = {
    'coupon': {
        'ip': '52.8.253.154',  # IP and port for elastic searcher
        # 'ip': '192.168.1.114',
        'port': '9200',
        'index_name': 'coupon-index',
        'type_name': 'coupon',
        'landfill': {
            'index_name': 'coupon-index-landfill'
        }
    },
}


# Database
# https://docs.djangoproject.com/en/1.8/ref/settings/#databases
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'gutscheincodes',
        'USER': 'mbyte_coupon',
        'PASSWORD': 'coupon_@Web123',
        'HOST': 'localhost',
        'PORT': '3306',
        'OPTIONS': {
            "init_command": "SET foreign_key_checks = 0;",
        },
    },
}

THUMBOR_SERVER = 'https://www.discounts.net.in/upload/'


CORS_ORIGIN_ALLOW_ALL = True
