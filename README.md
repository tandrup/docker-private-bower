# Private bower registry with caching

This docker image sets up a private bower registry which caches third party packages.

All data is stored in the `/data` volume which should be mounted somewhere persistent.

The ports `5678`, `6789` and `7891` should be mapped one-to-one.

The docker image need to know which IP/hostname it can be reached on. This is done by specifying the `ADDRESS` environment variable at launch.

    docker run -e ADDRESS=my-bower-registry \
               -v /somewhere/to/store/stuff:/data \
               -p 5678:5678 -p 6789:6789 -p 7891:7891 \
               tandrup/private-bower

## Usage

In your client project add the registry to your `.bowerrc` file:

    {
        "registry": "http://my-bower-registry:5678"
    }

