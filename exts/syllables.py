

ipa = {
	" ":"",
	" ":"",
	"ˈ":"",
	"ɜ":"ʌ",
	"ɹ":"5",
	"ɑ":"a",
	"r":"ɹ",
}
numberize = {
	"ə":"7",
	"æ":"7",
	"u":"7",
	"w":"6",
	"j":"6",
	"aɪ":"7",
	"eɪ":"7",
	"aʊ":"7",
	"oʊ":"7",
	"ɔɪ":"7",
	"ɪ":"7",
	"ʊ":"7",
	"ɛ":"7",
	"a":"7",
	"ð":"3",
	"n":"4",
	"z":"3",
	"s":"3",
	"t":"1",
	"f":"3",
	"h":"0",
	"ɹ":"5",
	"m":"4",
	"k":"1",
	"l":"5",
	"d":"1",
	"ŋ":"4",
	"b":"1",
	"ʌ":"7",
	"v":"3",
	"g":"1",
	"θ":"3",
	"i":"7"
}


sentence = "jəɹ faɹ tu smaɹt / tə bi ð woʊn li θɪŋ / stæn dɪ njəɹ weɪ"

for a in ipa:
	sentence = sentence.replace(a,ipa[a])
print(sentence)
for b in numberize:
	sentence = sentence.replace(b,numberize[b])

print(sentence)