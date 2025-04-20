# Anti Void Fall Staff

A script that runs on Roblox executor, and kicks the player out of the game if a Void Fall's game staff is detected.

## Showcase

![](https://i.ibb.co.com/4n6mYs9x/Anti-Staff-Showcase.jpg)

## Features

* Simple, and easy to use.
* Lightweight, and optimized for performance.
* Retrieves informations of the detected staff (username, roles, etc.).
* Ignore friend feature that ignores staff if it's friends with the player.


## Configuration

To configure the ignore friend feature, set `getgenv()["Ignore Friend"]` to either true or false as a bool in the script. Example:

```luau
getgenv()["Ignore Friend"] = true
```

## Note

This script doesn't support any actions that violate [Roblox's Terms of Use](https://en.help.roblox.com/hc/en-us/articles/115004647846-Roblox-Terms-of-Use).

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
