import re
import random
import nimpy
import strutils
randomize()

let spintax_bracket: Regex = re(r"(?<!\\)((?:\\{2})*)\{([^}{}]+)(?<!\\)((?:\\{2})*)\}")

proc random_pick(text: string, full_text: string): string =
    let replacement = text[1 .. text.high - 1].split("|").sample()    
    return full_text.replace(text, replacement)

proc spin(text: string): string {.exportpy.} = 
    var new_string: string = text
    while true:
        var matches: seq[string] = findAll(new_string, spintax_bracket)
        if matches == @[]: break
        for m in matches:
            new_string = random_pick(m, new_string)
    return new_string

