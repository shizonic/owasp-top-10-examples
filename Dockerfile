FROM ruby:2.3

ARG USER_ID
ARG GROUP_ID
ARG APP_NAME

RUN addgroup --gid $GROUP_ID user
RUN adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID user

ENV INSTALL_PATH /opt/app
RUN mkdir -p $INSTALL_PATH
COPY ./$APP_NAME $INSTALL_PATH

RUN chown -R user:user $INSTALL_PATH
WORKDIR $INSTALL_PATH
RUN bundle install


EXPOSE 3000

USER $USER_ID
CMD ["shotgun", "--port", "3000", "--host", "0.0.0.0"]
