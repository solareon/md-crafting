<h1>md-drugs</h1>

<div align="center">
  <a href="https://discord.gg/sAMzrB4DDx">
    <img align="center" src="https://cdn.discordapp.com/attachments/1164709522691076120/1185676859363557457/Discord_logo.svg.png?ex=65907aa0&is=657e05a0&hm=dd2a8924c3a3d84507747ab2bac036e5fc219c697e084c9aa13ba468ff725bde&" width="100">
  </a><br>
  <a href="https://discord.gg/sAMzrB4DDx">Mustache Scripts Discord</a><br>
</div>

<h1>Credits</h1>

- Big Credit to [Bostra](https://discord.gg/5ncbwMNq). if you have been around you may have seen him post some free scripts and help people, There was definetly times I dm'd him saying what the fuck am I doing and he helped keep me sane.

- shout out to my beta testers who had to deal with me a lot!

- Our partner [1of1 Servers]( https://1of1servers.com/) and their [discord](https://discord.gg/1of1servers) for their amazing server hosting! absolutely top notch.

<h1>Dependencies</h1>
- **ox_lib**
- **ability to read the readme**
- **a cat**
<h1>How to install like a fuckin boss</h1>

- **STEP 1**
Drag Resource into your script folder

- ** STEP 2** 
fill out your config

- **STEP 3 **
add this to qb-core config
```
QBConfig.Skills = {
	'craftingxp',
	'crafting',
}
```

then head to player.lua in the server folder of qb-core
search for 
```
PlayerData.metadata['dealerrep'] = PlayerData.metadata['dealerrep'] or 0
```
and underneath that add this
```
for k, v in pairs (QBConfig.Skills) do 
    PlayerData.metadata[v] = PlayerData.metadata[v] or 0
   end
```

so it should look like this 

```

 for k, v in pairs (QBConfig.Skills) do 
    PlayerData.metadata[v] = PlayerData.metadata[v] or 0
 end
```	


- ** STEP 4** 
look at the commented out part of the config. it has what options are avaible to add to crafting and which are REQUIRED and which are not required.

- **STEP 5**
pet a cat