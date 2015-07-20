--[[
Copyright (c) 2014 Google Inc.

See LICENSE file for full terms of limited license.
]]

require 'convnet'

return function(args)
    args.n_units        = {16, 32, 32, 32, 64, 64}
    args.filter_size    = {3, 3, 3, 3, 3, 3}
    args.filter_stride  = {2, 1, 1, 2, 1, 1}
    args.n_hid          = {512, 256}
    args.nl             = nn.Rectifier
    args.use_dropout    = true

    return create_network(args)
end

