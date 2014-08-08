# asher/nginx-ssl-bundled

[`asher/nginx-ssl-bundled`](https://index.docker.io/u/asher/nginx-ssl-bundled) is a [docker](https://docker.io) base image for bundling your ssl certificate. 

It is based on [`dockerfile/nginx`](https://registry.hub.docker.com/u/dockerfile/nginx/) base image.

## Usage

- Create a Dockerfile in a directory containing <your-ssl-certificate>.crt and <your-private-key>.key with the following content:

        FROM asher/nginx-ssl-bundled

- Run the following command in your application directory:

        docker build -t nginx-ssl .

- Add the following lines to your nginx server block

        ssl on;
        ssl_certificate /etc/ssl/<your-ssl-certificate>.crt;
        ssl_certificate_key /etc/ssl/<your-private-key>.key;


## Notes

- (Obviously) Don't publish the result of this build to any public repos.
