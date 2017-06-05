# Splunk App Inspect

I built this container so that I could use Splunk's App Inspect as an executable.

***

## How it works

`docker run -it -v <path/to/splunk/app/>:/tmp/ iam6a64/appinspect:latest /tmp/<splunk-app>.tgz | tee <path/to/splunk/app/>app-inspect.txt`

#### Example
`docker run -it -v /iam6a64/splunk/research-dev/:/tmp/ iam6a64/appinspect:latest /tmp/funct.tgz | tee /iam6a64/splunk/research-dev/funct.txt`

***
