if data.raw["map-gen-presets"] and data.raw["map-gen-presets"].default then
  for _, preset in pairs(data.raw["map-gen-presets"].default) do
    if type(preset) == "table" and preset.basic_settings and preset.basic_settings.autoplace_controls and preset.basic_settings.autoplace_controls["iron-ore"] then
      preset.basic_settings.autoplace_controls["aluminium-ore"] = preset.basic_settings.autoplace_controls["iron-ore"]
    end
  end
end
