# Shader Anti-Lag System

Optimize your FiveM server with customizable shaders and anti-lag features.

## Features

- Customizable shader intensity and quality settings
- Anti-lag feature to clean up entities and reduce lag
- Player-specific settings stored in a database

## Requirements

- FiveM server
- ESX Framework
- MySQL database

## Installation

1. Download the script files.
2. Place the files in your FiveM server's resources folder.
3. Add `start shader_anti_lag_system` to your server.cfg file.
4. Import the database.sql file into your MySQL database.

## Usage

### Commands

- `/shader` - Adjust shader settings (admin only)
- `/antilag` - Adjust anti-lag settings (admin only)

### Permissions

- `admin` - Required to use the `/shader` and `/antilag` commands.

## Configuration

The script can be configured in the `config.lua` file. Adjust the following settings:

- `ShaderIntensity` - Set the intensity of the shaders (default: 1.0)
- `ShaderQuality` - Set the quality of the shaders (default: 'high')
- `AntiLagEnabled` - Enable or disable the anti-lag feature (default: true)
- `AntiLagInterval` - Set the interval for the anti-lag feature in milliseconds (default: 5000)
- `MaxEntities` - Set the maximum number of entities allowed (default: 1000)

---

## Generated with EnderDevelopment

This plugin was generated in minutes with [EnderDevelopment](https://enderdevelopment.com) — the AI platform that turns your ideas into working Minecraft plugins, Discord bots and FiveM scripts.

**Want your own?** [Generate this project on EnderDevelopment](https://dash.enderdevelopment.com?utm_source=github&utm_medium=readme&utm_campaign=shader-anti-lag-system&utm_content=bottom) — describe it in one sentence and get the full source code.