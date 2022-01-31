# xonotic-hpwarn
Xonotic mod that warns the player when his HP is low.

You can set the low HP limit by `cl_hpwarn #`. Using `0` will disable it.

# Install
Copy the files to your xonotic data directory.

For linux users: /home/username/.xonotic/data (usually)

For windows users: c:\Users\username\Saved Games\xonotic\data

For Mac users: /Users/Library/Application Support/xonotic/data


# Build
## GNU/Linux (deb-based systems)
1. Run `deps.sh` which updates the submodules and clones gmqcc (needed only once)
2. Run `build.sh` which builds the mod
3. You should find the compiled files in the `build` directory.
