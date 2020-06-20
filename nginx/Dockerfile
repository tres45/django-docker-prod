FROM nginx:1.19.0-alpine

# from config:
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d

# from sites:
# RUN rm /etc/nginx/sites-enabled/default
# ADD sites-enabled/ /etc/nginx/sites-enabled
