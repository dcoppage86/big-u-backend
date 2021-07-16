if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_big-u', domain: 'big-u-json-api'
  else
    Rails.application.config.session_store :cookie_store, key: '_big-u'
  end