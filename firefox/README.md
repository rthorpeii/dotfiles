# Firefox Customizations
For use with firefox and the [Tree Style Tabs Extension](https://addons.mozilla.org/en-US/firefox/addon/tree-style-tab/).

# Installation
## Basic Formatting
1. You must have [Tree Style Tabs](https://addons.mozilla.org/en-US/firefox/addon/tree-style-tab/) extension installed on Firefox.
2. Go to Firefox Add-Ons Manager > Tree Style Tab > Options , then click the :ballot_box_with_check: Unlock Expert Options.
3. On the Appearance section of the options page, choose the **"No Decorations"** to disable the built-in theme applied.
4. Scroll down on the options page until you find the "► Advanced" section and expand it. You will see a textfield there with a caption on the top **"Extra Style rules provided by Tree Style Tab"**.
5. Copy the entire code/content of the **treestyletab-edge-mimicry.css** and paste it on the textfield.
6. Close then open the sidebar to restart the tree style tab extension and to be able to load the theme correctly. Alternatively, you can also disable then enable the extension for it to properly load the css codes (and probably to reset the script handling for the pinned tabs, because there seems to be a problem with the pinned tabs layout when in "icons only" mode.) 

## Install userChrome.css mods:
1. You must have **toolkit.legacyUserProfileCustomizations.stylesheets** set to **true** on the **about:config** of Firefox. If you have not, then set it and restart firefox afterwards.
2. Go to **about:support** and find the **"Profile Directory"**. Click the **"open directory"** to navigate to your profile folder. Once you are at the profile folder, look for a folder named `chrome`, if it does not exist, then create one.
3. Copy-paste the `.css` files inside the `chrome` folder. (If you already have your own userChrome.css, then just copy-paste the "@import..." line on my userChrome.css to your existing userChrome.css.)
4. Re-launch Firefox.

# Credits
Originally based off of [UnlimitedAvailableUsername's Edge Mimicry - Tree Style Tab Theme](https://github.com/UnlimitedAvailableUsername/Edge-Mimicry-Tree-Style-Tab-For-Firefox)