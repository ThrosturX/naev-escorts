local fmt = require "format"

-- pick a random letter out of a string
local function pick_str(str)
    local ii = rnd.rnd(1, str:len()) -- pick a random index from string length
    return string.sub(str, ii, ii) -- returns letter at ii
end

local prefixes = {
	_("B'"),
	_("Be"),
	_("Ben"),
	_("Bir"),
	_("Bo"),
	_("Bon"),
	_("Bond"),
	_("D'"),
	_("De"),
	_("Do"),
	_("Dom"),
	_("Don"),
	_("Gan"),
	_("Gon"),
	_("Je"),
	_("Jen"),
	_("Jo"),
	_("Jon"),
	_("Se"),
	_("Sed"),
	_("Wan"),
	_("Wu"),
	_("z"),
	_("zi"),
	_("Ze"),
	_("Zed"),

}

local anchors = {
	_("A"),
	_("Anchor"),
	_("And"),
	_("Anvil"),
	_("Al"),
	_("Ash"),
	_("Bad"),
	_("Bak"),
	_("Bal"),
	_("Bald"),
	_("Bat"),
	_("Bate"),
   _("Blitzschneider"),
   _("Blizzard"),
   _("Blood"),
   _("Blunder"),
   _("Boot"),
	_("Brick"),
	_("Bronz"),
	_("Cak"),
	_("Cake"),
	_("Cell"),
	_("Celi"),
	_("Chees"),
	_("Cloud"),
	_("Cod"),
	_("Cold"),
	_("D"),
	_("Daph"),
	_("De"),
	_("Dee"),
	_("Dea"),
	_("Deal"),
	_("Duck"),
	_("Duckling"),
    _("Eagle"),
    _("Eggplant"),
	_("Ein"),
	_("Eind"),
	_("Eine"),
	_("Eins"),
	_("Eld"),
	_("End"),
	_("Err"),
	_("Far"),
	_("Fear"),
	_("Fer"),
	_("Filth"),
	_("Fir"),
	_("Firm"),
	_("For"),
	_("Ford"),
	_("Fork"),
	_("Form"),
	_("Fort"),
	_("Fortress"),
	_("Gand"),
	_("Gerr"),
	_("Gild"),
	_("Gill"),
	_("Gist"),
	_("Git"),
	_("Gitter"),
	_("God"),
	_("Godder"),
	_("Gold"),
	_("Gott"),
	_("Great"),
    _("Groß"),
	_("Gum"),
	_("Gumb"),
	_("Gund"),
	_("Gun"),
	_("Gunn"),
	_("Gyn"),
	_("Hack"),
	_("Han"),
	_("Hans"),
	_("Hat"),
	_("Hatt"),
	_("Hen"),
	_("Hend"),
	_("Hender"),
	_("Hens"),
	_("Hond"),
	_("Hoss"),
	_("Host"),
	_("Hot"),
	_("Hotten"),
	_("Hous"),
	_("Iald"),
	_("Il"),
	_("Ili"),
	_("Ill"),
	_("Illi"),
	_("In"),
	_("Ini"),
	_("Ind"),
	_("Ing"),
	_("Inn"),
	_("Int"),
	_("Iss"),
	_("Ist"),
	_("Jaram"),
	_("Jasp"),
	_("Jest"),
	_("Jerem"),
	_("John"),
	_("Kal"),
	_("Kald"),
	_("Kals"),
	_("Kalts"),
	_("Kand"),
	_("Kandest"),
	_("Kar"),
	_("Karl"),
	_("Kass"),
	_("Kat"),
	_("Katt"),
	_("Katty"),
	_("Kern"),
	_("Kerr"),
	_("Ketil"),
	_("Ketl"),
	_("Kett"),
	_("Kettel"),
	_("Kit"),
	_("Kits"),
	_("Kitt"),
	_("Kitz"),
	_("Kittz"),
	_("Kor"),
	_("Kord"),
	_("Kort"),
	_("Kott"),

	_("Lance"),
	_("Lanz"),
    _("Lantern"),
    _("Law"),
    _("Lawyer"),
    _("League"),
	_("Lith"),
	_("Lord"),
	_("Loth"),
	_("Lund"),
	_("Lun"),
	_("Lunn"),



   _("Lust"),

	_("Mass"),
	_("Mel"),
	_("Metal"),
	_("Meteor"),
	_("Mil"),
	_("Mild"),
	_("Mill"),
	_("Milt"),
	_("Min"),
	_("Mind"),
	_("Mint"),

	_("Nickel"),
	_("Nil"),

	_("Old"),
	_("Olden"),
	_("Oldest"),
	_("Or"),
	_("Ord"),
	_("Orl"),
	_("Orph"),
	_("Ost"),

	_("Pad"),
	_("Pam"),
	_("Pan"),
	_("Panda"),
	_("Past"),
	_("Pat"),
	_("Patt"),
	_("Pax"),
	_("Pen"),
	_("Pet"),
	_("Peter"),
	_("Petter"),
	_("Pest"),
	_("Pomme"),
	_("Pond"),
	_("Pog"),
	_("Pond"),
	_("Pondif"),

	_("Qaas"),
	_("Qald"),
	_("Quick"),

	_("Rand"),
	_("Res"),
	_("Ress"),
	_("Ron"),
	_("Round"),
	_("Rover"),
	_("Rock"),

   _("Seltsam"),
   _("Serial"),
   _("Sharing"),
   _("Sill"),
	_("Silver"),
	_("Somal"),
	_("Ston"),
	_("Straw"),

	_("Ton"),
	_("Thon"),
	_("Thor"),
	_("Thord"),
	_("Thun"),
	_("Thund"),
	_("Thunder"),

	_("Uli"),
	_("Ull"),
	_("Ullys"),
	_("Under"),
	_("Ungv"),

	_("Van"),
	_("Vander"),
	_("Vanst"),
	_("Ven"),
	_("Veni"),
	_("Victor"),
	_("Wan"),
	_("Wand"),
	_("Wen"),
	_("Win"),
	_("Window"),
	_("Winston"),
	_("Wu"),

	_("Xer"),
	_("Xi"),
	_("Xu"),
	_("Yak"),
	_("Yard"),
	_("Yell"),
	_("York"),
	_("Zak"),
	_("Zanzi"),
	_("Zell"),
	_("Zend"),
	_("Zi"),
	_("Zor"),

	   _("Akai"),
   _("Amarillo"),
   _("Aoi"),
   _("Azul"),
   _("Blau"),
   _("Bleu"),
   _("Blue"),
   _("Chairo No"),
   _("Crimson"),
   _("Cyan"),
   _("Gelb"),
   _("Gin'iro No"),
   _("Golden"),
   _("Gray"),
   _("Green"),
   _("Grün"),
   _("Haiiro No"),
   _("Kiiroi"),
   _("Kin'iro No"),
   _("Kuroi"),
   _("Mauve"),
   _("Midori No"),
   _("Murasaki No"),
   _("Pink"),
   _("Purple"),
   _("Red"),
   _("Roho"),
   _("Schwarz"),
   _("Shiroi"),
   _("Silver"),
   _("Violet"),
   _("Yellow"),

      _("Tallman"),
   _("Tanoshimi"),
   _("Tatsumaki"),
   _("Tegami"),
   _("Teineigo"),
   _("Tenkūryū"),
   _("Terror"),
   _("Thunder"),
   _("Tomodachi"),
   _("Teeth"),
   _("Tooth"),
   _("Tora"),
   _("Tori"),
   _("Treasure"),
   _("Tree"),
   _("Tsuchi"),
   _("Tumbl"),
   _("Twill"),
   _("Tyrant"),
   _("Umi"),
   _("Urch"),
   _("Vel"),
   _("Veng"),
   _("Void"),
   _("Vomit"),
   _("Wach"),
   _("Watchr"),
   _("Wedg"),
   _("Widg"),
   _("Wid"),
   _("Wight"),
   _("Willow"),
   _("Wind"),
   _("Woz"),
   _("Wolf"),
   _("Yama"),
   _("Yami"),
   _("Yarou"),
   _("Yasai"),
   _("Yatsu"),
   _("Youma"),
}

local suffixes = {
	_("'"),
	_("'k"),
	_("'s"),
	_("'t"),
	_("a"),
	_("ad"),
	_("alf"),
	_("am"),
	_("an"),
	_("bad"),
	_("bar"),
	_("be"),
	_("ber"),
	_("belt"),
	_("bon"),
	_("bone"),
	_("bolg"),
	_("cald"),
	_("calf"),
	_("dab"),
	_("dad"),
	_("daph"),
	_("dan"),
	_("don"),
	_("ee"),
	_("en"),
	_("elia"),
	_("eliad"),
	_("elian"),
	_("elle"),
	_("emme"),
	_("enne"),
	_("er"),
	_("ess"),
	_("esson"),
	_("est"),
	_("eston"),
	_("estone"),
	_("ex"),
	_("ext"),
	_("exter"),
	_("exxy"),
	_("fed"),
	_("femme"),
	_("fen"),
	_("fenne"),
	_("fet"),
	_("fett"),
	_("git"),
	_("gitt"),
	_("gitte"),
	_("god"),
	_("got"),
	_("gott"),
	_("gotte"),
	_("ham"),
	_("iad"),
	_("ier"),
	_("ilya"),
	_("iya"),
	_("illa"),
	_("ison"),
	_("isen"),
	_("ist"),
	_("jon"),
	_("karl"),

	_("le"),
	_("men"),
	_("mon"),
	_("mist"),
	_("musk"),
	_("man"),
	_("mann"),
	_("nem"),
	_("nim"),
	_("nom"),
	_("o"),
	_("oid"),
	_("on"),
	_("otten"),
	_("oxy"),
	_("oxxy"),

	_("phne"),

	_("rap"),
	_("red"),
	_("ress"),
	_("roid"),
	_("sen"),
	_("sin"),
	_("son"),
	_("ster"),
	_("ston"),
	_("stone"),
	_("sus"),
	_("suz"),
	_("ter"),
	_("tin"),
	_("tt"),
	_("ty"),
	_("ton"),
	_("uzi"),
	_("vin"),
	_("win"),
	_("xer"),
	_("zer"),
	_("zi"),
	_("zor"),
}

   local ugly_duplicates = {
		{ found="aaa", replace="a" },
		{ found="eee", replace="ee" },
		{ found="iii", replace="i" },
		{ found="ooo", replace="oo" },
		{ found="ooi", replace="oi" },
		{ found="rrr", replace="rdr" },
		{ found="sss", replace="sz" },
		{ found="uuu", replace="u" },
		{ found="ttt", replace="t" },
		{ found="yyy", replace="y" },
		{ found="''", replace="'" .. pick_str("tkczpdn") },
   }

--[[
-- @brief Generates somewhat human sounding names
--]]
local function human ()
   local prefix = prefixes[ rnd.rnd(1, #prefixes) ]
   local anchor = anchors[ rnd.rnd(1, #anchors) ]
   local first_name_part = anchors[ rnd.rnd(1, #anchors) ]
   local suffix = suffixes[ rnd.rnd(1, #suffixes) ]
   local suffix2 = suffixes[ rnd.rnd(1, #suffixes) ]

   local vowels = { "a", "e", "i", "o", "u", "y" }

   local vowel = vowels[rnd.rnd(1, #vowels)]
   local vowel2= vowels[rnd.rnd(1, #vowels)]

   local first_name_alt = fmt.f("{prefix}{suffix}", {prefix=prefixes[ rnd.rnd(1, #prefixes) ], suffix=suffixes[ rnd.rnd(1, #suffixes) ]})

   if rnd.rnd(0, 1) == 0 then
	first_name_part = first_name_alt
   end

   local params = {
		first_name_part = first_name_part,
		first_name_alt = first_name_alt,
		prefix=prefix,
		anchor=anchor,
		suffix=suffix,
		suffix2=suffix2,
		vowel=vowel,
		vowel2=vowel2,
   }

   local result
   local firstname

   local r = rnd.rnd()
   if r < 0.0166 then
      firstname = fmt.f(_("{first_name_part}{suffix2}"), params)
      result = fmt.f(_("{prefix}{anchor}{suffix}"), params)
   elseif r < 0.433 then
	firstname = fmt.f(_("{first_name_part}{vowel}"), params)
      result = fmt.f(_("{anchor}{suffix}"), params)
   elseif r < 0.50 then
		firstname = fmt.f(_("{first_name_part}{vowel2}"), params)
      result = fmt.f(_("{anchor}{vowel}"), params)
   elseif r < 0.666 then
	firstname = fmt.f(_("{first_name_part}"), params)
      result = fmt.f(_("{anchor}{suffix}{vowel}"), params)
   elseif r < 0.833 then
		firstname = fmt.f(_("{first_name_alt}"), params)
      result = fmt.f(_("{anchor}{vowel} {prefix}{suffix}"), params)
   else
	firstname = fmt.f(_("{prefix}{first_name_part}"), params)
      result = fmt.f(_("{anchor}{suffix}{suffix2}"), params)
   end

   -- remove ugly duplicate letters
   for found, replacement in pairs(ugly_duplicates) do
	result = string.gsub( result, found, replacement )
	firstname = string.gsub( firstname, found, replacement )
	end

   -- final safety check, give the human a generic gender neutral name
   -- just in case we deleted everything
   if firstname:len() == 0 then
	firstname = "Ollie"
	end

	if result:len() == 0 then
		result = "Doe"
	end
   return result, firstname
end

return human
