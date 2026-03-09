-- rime.lua (1.1.2 舊版相容型)
local poj_map = {
    ["ā"]="Ā", ["ē"]="Ē", ["ī"]="Ī", ["ō"]="Ō", ["ū"]="Ū",
    ["á"]="Á", ["é"]="É", ["í"]="Í", ["ó"]="Ó", ["ú"]="Ú", ["ḿ"]="Ḿ", ["ń"]="Ń",
    ["à"]="À", ["è"]="È", ["ì"]="Ì", ["ò"]="Ò", ["ù"]="Ù",
    ["â"]="Â", ["ê"]="Ê", ["î"]="Î", ["ô"]="Ô", ["û"]="Û",
    ["a̍"]="A̍", ["e̍"]="E̍", ["i̍"]="I̍", ["o̍"]="O̍", ["u̍"]="U̍"
}

function poj_case_filter(input, env)
    -- 舊版 Rime 讀取 option 的方式
    local is_cap = env.engine.context:get_option("poj_cap")
    local is_upper = env.engine.context:get_option("poj_upper")

    for cand in input:iter() do
        if not is_cap and not is_upper then
            yield(cand)
        else
            local text = cand.text
            local new_text = ""
            local i = 1
            for c in text:gmatch("[%z\1-\127\194-\244][\128-\191]*") do
                if is_upper or (is_cap and i == 1) then
                    new_text = new_text .. (poj_map[c] or c:upper())
                else
                    new_text = new_text .. c
                end
                i = i + 1
            end
            -- 舊版 Candidate 構造函數
            yield(Candidate(cand.type, cand.start, cand._end, new_text, cand.comment))
        end
    end
end