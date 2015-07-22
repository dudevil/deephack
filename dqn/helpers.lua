function frugal(init_estimate, percentile)
    local percentile = percentile or 0.5
    local estimate = init_estimate

    return function(element)
        local r = torch.random()
        if element > estimate and r > 1-percentile then
            estimate = estimate + 1
        elseif element < estimate and r > percentile then
         estimate = estimate - 1
        end
        return estimate
    end
end