def ftoc(farh)
	(farh.to_f - 32.0) / 9.0 * 5.0
end

def ctof(celc)
	celc.to_f / 5.0 * 9.0 + 32.0
end
