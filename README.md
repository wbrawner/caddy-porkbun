# Caddy with Porkbun DNS Plugin

## Usage

Make sure to set the `PORKBUN_API_KEY` and `PORKBUN_API_SECRET_KEY` environment
variables to the corresponding values.

Then add the appropriate Caddy json config:

```
{
  "module": "acme",
  "challenges": {
    "dns": {
      "provider": {
        "name": "porkbun",
        "api_key": "{env.PORKBUN_API_KEY}",
	    "api_secret_key": "{env.PORKBUN_API_SECRET_KEY}"
      }
    }
  }
}
```

or Caddyfile equivalent:

```
{
    acme_dns porkbun {
        api_key {env.PORKBUN_API_KEY}
        api_secret_key {env.PORKBUN_API_SECRET_KEY}
    }
}
```
