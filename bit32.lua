package.preload["bit32"] = function (module_name)
  local function arshift(x, disp)
    
  end
  local function band(...) end
  local function bnot(x) end
  local function bor(...) end
  local function btest(...) end
  local function bxor(...) end
  local function extract(n, field, width) end
  local function replace(n, v, field, width) end
  local function lrotate(x, disp) end
  local function lshift(x, disp) end
  local function rrotate(x, disp) end
  local function rshift(x, disp) end
  return {
    arshift = arshift,
    band = band,
    bnot = bnot,
    bor = bor,
    btest = btest,
    bxor = bxor,
    extract = extract,
    replace = replace,
    lrotate = lroate,
    lshift = lshift,
    rrotate = rrotate,
    rshift = rshift
  }
end