--[[
Copyright (c) 2014 Google Inc.

See LICENSE file for full terms of limited license.
]]

require 'convnet'

return function(args)
    args.n_units        = {16, 24, 48, 64}
    args.filter_size    = {3, 3, 3, 3}
    args.filter_stride  = {2, 2, 2, 2}
    args.n_hid          = {1024}
    args.nl             = nn.Rectifier
    args.use_dropout    = true

    return create_network(args)
end

