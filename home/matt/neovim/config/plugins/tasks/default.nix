{
  plugins.overseer = {
    enable = true;
    luaConfig.post = builtins.readFile ./post.lua;
  };
}
