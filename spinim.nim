import re
import random
import strutils
randomize()
import nimpy


let spintax_bracket: Regex = re(r"(?<!\\)((?:\\{2})*)\{([^}{}]+)(?<!\\)((?:\\{2})*)\}")

proc random_pick(text: string, full_text: string): string =
    let replacement = text[1 .. text.high - 1].split("|").sample()    
    result = full_text.replace(text, replacement)

proc spin(text: string): string {.exportpy.} = 
    var new_string: string = text
    while true:
        let matches: seq[string] = findAll(new_string, spintax_bracket)
        if matches == @[]: break
        for m in matches:
            new_string = random_pick(m, new_string)
    result = new_string
