# dotfiles
A collection of my dotfiles for personal use. Feel free to make issues, pull requests, etc... at any time. Just know that I may not respond to all of them, because I'm pretty busy.

## Portability
I have a PC, a Raspberry Pi, and an old office-computer-turned-ubuntu-box that I sometimes hack on. As such, portability of all my dotfiles is key. I'll try to keep my various config files compatible with all of these systems. However, many things will not work on my PC because I refuse installing cygwin/ babun just to to have zsh on my PC (I rather like my antivirus). Because of this the install scripts will not work on my PC, nor will I write them intending for them to work. Many of the zsh scripts will not work either. I'll probably resort to just manually copy-and-pasting the configs onto my PC, but if anyone can think of a better way, please tell me!

## Components
- `bin/dot` Updates your environment by running `script/install`, which in turn runs any `install.sh` files that it can find.

## Inspirations/ People I stole things from
- [@holman's](https://github.com/holman) [dotfiles](https://github.com/holman/dotfiles) 
- [@thoughtbot's](https://github.com/thoughtbot) [dotfiles](https://github.com/thoughtbot/dotfiles)

---
[LICENSE](./LICENSE.md)
