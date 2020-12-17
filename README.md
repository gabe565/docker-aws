# docker-awscli

This is a simple Alpine Docker image with the awscli installed.

## Usage

Simple prefix any command with `docker run --rm -it gabe565/awscli`. For example:

```sh
docker run --rm -it gabe565/awscli help
```

### Authentication

#### Environment Variables

The simplest way to authenticate is by using the `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` environment variables:

```sh
docker run --rm -it -e AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE -e AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY gabe565/awscli help
```

#### AWS Config

Alternatively, you can volume bind an existing AWS configuration directory to `/.aws`.

```sh
docker run --rm -it -v ~/.aws:/.aws gabe565/awscli help
```

### Local Volume Binding

If you need to bind the current directory to a volume, the container runs the given command in `/data`. You can bind the current directory to `/data` with `-v "$PWD:/data"`.

For example, to sync the contents of a bucket called `example-bucket` to the current directory, run:

```sh
docker run --rm -it -v "$PWD:/data" gabe565/awscli s3 sync s3://example-bucket .
```
