## Prereqs for this script:

1.) Install Go/Golang

2.) Grab Bug Bounty Projects from Projectdiscovery's [Chaos](https://github.com/shifa123/chaos-hunt/blob/master/chaos-hunt.sh) (the list of Bug Bounty projects is in the index.json file )

```
wget "https://chaos-data.projectdiscovery.io/index.json" && cat index.json | grep "URL" | sed 's/"URL": "//;s/",//' | while read host do;do wget "$host";done && for i in `ls -1 | grep .zip$`; do unzip $i; done && rm *.zip && cat *.txt >> alltargets.txt

```

3.) Install [notify](https://github.com/projectdiscovery/notify/blob/master/README.md)
    - If you're using dicord check out this [article](https://bin3xish477.medium.com/how-to-set-up-notify-by-projectdiscovery-34fc6e7f1527) for further help
    
```
go install -v github.com/projectdiscovery/notify/cmd/notify@latest

```

4.) Install [anew](https://github.com/tomnomnom/anew)
```
go install -v github.com/tomnomnom/anew@latest

```

#### Runn this script on a Kali VM (make executable with chmod +x)
