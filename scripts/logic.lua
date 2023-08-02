function has(item, amount)
    local count = Tracker:ProviderCountForCode(item)
    amount = tonumber(amount)
    if not amount then
        return count > 0
    else
        return count >= amount
    end
end

function can_burn_rats()
	return (has("torch") and has("lighter")) or (has("gas_mask") and has("gas_grenade")) or has("flare") or (has("petrol_bomb") and has("lighter"))
end

function can_leave_oq()
	return has("lockdown_wheel") and has("dog_tag_friloux")
end
