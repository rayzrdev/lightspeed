![Banner](res/lightspeed-banner-1.png)

<h1 align="center">lightspeed</h1>
<p align="center"><i>Made with :heart: by <a href="https://github.com/Rayzr522">@Rayzr522</a> for RayzrDev</i></p>

> Server files for the LightspeedMC (RayzrDev) Minecraft server

This repo contains the majority of the plugin & config files for the LightspeedMC Minecraft server. Using git for this means proper version control when updating configs, easy local setups if you want to debug issues on the live server without interruptions, and community collaboration on fixing configuration errors, adding/tweaking plugins, and more.

## Setup

If, instead, you want to do your own local setup of this server either for collaboration or debugging purposes, you will need a few things first:

0. Basic terminal knowledge
1. Java 8
2. Git
3. Tuinity 1.16 - [instructions for building can be found here](https://github.com/Spottedleaf/Tuinity/tree/ver/1.16)

```bash
# clone the repo
git clone https://github.com/RayzrDev/lightspeed.git
cd lightspeed
# copy in Tuinity JAR
cp path/to/tuinity-paperclip.jar .
# run the server
./start.sh
```

From there, feel free to tweak things to your liking! Any PRs are greatly appreciated, with the limitation that premium plugins cannot be included (for legal reasons), and also that you please do your best to `.gitignore` any files which are more just storage and less config, such as playerdata or world files.

## Legal Disclaimer

I don't in any way claim rights to any of the plugin JAR files in the `plugins` folder. If any plugin dev finds this and has a problem with me including their (probably now outdated) JAR in this repo, feel free to open an issue and I'll happily remove it. I'm not looking for any legal trouble, I just want VCS on my Minecraft server :D
