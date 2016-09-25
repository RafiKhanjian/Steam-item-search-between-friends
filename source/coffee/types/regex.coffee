REGEX_LEVEL = /Level\s(\d+)/i
REGEX_TYPE_LIMITED = /(Limited)\s(Level|\w+)/i
REGEX_TYPE_STRANGE = /Strange\s.*\s-\s(.*):\s\d+/i
REGEX_RENAMED = /^(\'\'.*\'\')$/i
REGEX_GIFTED = /Gift\sfrom:\s(.*)/i
REGEX_CRAFTED = /Crafted\sby\s(.*)/i
REGEX_STRANGE = /\((.*):\s(\d+)\)/i
REGEX_STRANGE_KILLS = /^\s+Kills:\s(\d+)/i
REGEX_PAINT = /Paint\sColor:\s(.*)/i
REGEX_STYLE = /Style:\s(.*)/i
REGEX_HALLOWEEN = /Halloween:\s(.*)\s\(spell only active during event\)/i
REGEX_HOLIDAY = /Holiday\sRestriction:\s(.*)/i
REGEX_KILLSTREAKER = /^Killstreaker:\s(.*)/i
REGEX_SHEEN = /^Sheen:\s(.*)/i
REGEX_UNUSUAL = /Unusual\sEffect:\s(.*)/i
REGEX_MEDAL = /Medal\sno\.\s(\d+)/i
REGEX_DEDICATION = /^Dedication:\s(.*)$/i
REGEX_EVENT_DOTA2 = /((New\sBloom|Diretide|Frostivus|The\sInternational|Sithil\'s\sSummer\sStash|The\sCOmpendium\sFantasy\sChallenge)\s(\d{4}))/i
REGEX_PLAYER_DOTA2 = /name\=\"player_card_info.*\>Name:\s([^\<\>]+)/i
REGEX_TEAM_DOTA2 = /name\=\"player_card_info.*\>Team:\s([^\<\>]+)/i
REGEX_HEROIC_DATE = /(\w{3})\s(\d{2})\,\s(\d{4})\s\((\d{1,2}\:\d{1,2}\:\d{1,2})\)(\.|\!|)/i
REGEX_HEROIC_VICTORY = /\<font\scolor\=\#999999\>(.*)\sdefeated\s(.*)\swith\sa\sscore\sof\s(\d+)\sto\s(\d+)\son\s(\w{3})\s(\d{2})\,\s(\d{4})\s\((\d{1,2}\:\d{1,2}\:\d{1,2})\)(\.|\!|)<\/font\>/i
REGEX_HEROIC_FIRSTBLOOD = /\<font\scolor\=\#999999\>(.*)\sof\s(.*)\sscored\sfirst\sblood\sagainst\s(.*)\son\s(\w{3})\s(\d{2})\,\s(\d{4})\s\((\d{1,2}\:\d{1,2}\:\d{1,2})\)(\.|\!|)<\/font\>/i
REGEX_HEROIC_DOUBLEKILL = /\<font\scolor\=\#999999\>(.*)\sof\s(.*)\sscored\sa\sdouble\skill\sagainst\s(.*)\son\s(\w{3})\s(\d{2})\,\s(\d{4})\s\((\d{1,2}\:\d{1,2}\:\d{1,2})\)(\.|\!|)<\/font\>/i
REGEX_HEROIC_TRIPLEKILL = /\<font\scolor\=\#999999\>(.*)\sof\s(.*)\sscored\sa\striple\skill\sagainst\s(.*)\son\s(\w{3})\s(\d{2})\,\s(\d{4})\s\((\d{1,2}\:\d{1,2}\:\d{1,2})\)(\.|\!|)<\/font\>/i
REGEX_HEROIC_ULKTRAKILL = /\<font\scolor\=\#999999\>(.*)\sof\s(.*)\sscored\san\sULTRA\sKILL\sagainst\s(.*)\son\s(\w{3})\s(\d{2})\,\s(\d{4})\s\((\d{1,2}\:\d{1,2}\:\d{1,2})\)(\.|\!|)<\/font\>/i
REGEX_HEROIC_RAPMAGE = /\<font\scolor\=\#999999\>(.*)\sof\s(.*)\sscored\sa\sRAMPAGE\,\skilling\severy\smember\sof\s(.*)\son\s(\w{3})\s(\d{2})\,\s(\d{4})\s\((\d{1,2}\:\d{1,2}\:\d{1,2})\)(\.|\!|)<\/font\>/i
REGEX_HEROIC_GODLIKE = /\<font\scolor\=\#999999\>(.*)\sof\s(.*)\sachieved\sgodlike\sstreak\sagainst\s(.*)\son\s(\w{3})\s(\d{2})\,\s(\d{4})\s\((\d{1,2}\:\d{1,2}\:\d{1,2})\)(\.|\!|)<\/font\>/i
REGEX_HEROIC_COURIERKILL = /\<font\scolor\=\#999999\>(.*)\sof\s(.*)\skilled\sa\scourier\sagainst\s*(.*)\son\s(\w{3})\s(\d{2})\,\s(\d{4})\s\((\d{1,2}\:\d{1,2}\:\d{1,2})\)(\.|\!|)<\/font\>/i
REGEX_HEROIC_ALLYDENIED = /\<font\scolor\=\#999999\>(.*)\sof\s(.*)\sdenied\shis\sally\s(.*)\son\s(\w{3})\s(\d{2})\,\s(\d{4})\s\((\d{1,2}\:\d{1,2}\:\d{1,2})\)(\.|\!|)<\/font\>/i
REGEX_HEROIC_AEGISDENIED = /\<font\scolor\=\#999999\>(.*)\sof\s(.*)\sdestroyed\sthe\sAegis\sof\sthe\sImmortal\,\sdenying\s(.*)\its\suse\son\s(\w{3})\s(\d{2})\,\s(\d{4})\s\((\d{1,2}\:\d{1,2}\:\d{1,2})\)(\.|\!|)<\/font\>/i
REGEX_HEROIC_AEGISSNATCH = /\<font\scolor\=\#999999\>(.*)\sof\s(.*)\sunexpectedly\ssnatched\sthe\sAegis\sof\sthe\sImmortal\,\sdenying\s(.*)\sits\suse\son\s(\w{3})\s(\d{2})\,\s(\d{4})\s\((\d{1,2}\:\d{1,2}\:\d{1,2})\)(\.|\!|)<\/font\>/i
REGEX_HEROIC_EARLYROSHAN = /\<font\scolor\=\#999999\>(.*)\sof\s(.*)\sgot\san\searly\sRoshan\sagainst\s(.*)\son\s(\w{3})\s(\d{2})\,\s(\d{4})\s\((\d{1,2}\:\d{1,2}\:\d{1,2})\)(\.|\!|)<\/font\>/i
REGEX_HEROIC_RAPIER = /\<font\scolor\=\#999999\>(.*)\sof\s(.*)\spurchased\sa\sRapier\sagainst\s(.*)\son\s(\w{3})\s(\d{2})\,\s(\d{4})\s\((\d{1,2}\:\d{1,2}\:\d{1,2})\)(\.|\!|)<\/font\>/i
REGEX_HEROIC_5ECHOSLAM = /\<font\scolor\=\#999999\>(.*)\sof\s(.*)\sperformed\sa\s5\sman\sEcho\sSlam\sagainst\s(.*)\son\s(\w{3})\s(\d{2})\,\s(\d{4})\s\((\d{1,2}\:\d{1,2}\:\d{1,2})\)(\.|\!|)<\/font\>/i
REGEX_GEMS = /\<span\sstyle\=\"font\-size\:\s18px\;\scolor\:\srgb\(\d+\,\s\d+\,\s\d+\)\"\>([^\<\>]+)\<\/span\>\<br\>\<span\sstyle\=\"font\-size\:\s12px\"\>([^\<\>]+)\<\/span\>/ig
REGEX_GEM = /\<span\sstyle\=\"font\-size\:\s18px\;\scolor\:\srgb\(\d+\,\s\d+\,\s\d+\)\"\>([^\<\>]+)\<\/span\>\<br\>\<span\sstyle\=\"font\-size\:\s12px\"\>([^\<\>]+)\<\/span\>/i
REGEX_TRACK = /(.*):\s(\d+)/i
REGEX_AUTOGRAPHRUNE = /Autograph\sRune/i
