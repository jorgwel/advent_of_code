require 'minitest/autorun'
require_relative 'solution.rb'

describe "Simple Multiplication-Checksum " do
  it "Sample candidates" do
    checksum = calculate_checksum_multiplying_2_and_3_apperances_in_candidate_list("
  abcdef
  bababc
  abbcde
  abcccd
  aabcdd
  abcdee
  ababab")
    assert_equal(12, checksum)
  end

  it "Another sample made by myself (to debug) 1" do
    checksum = calculate_checksum_multiplying_2_and_3_apperances_in_candidate_list("
  jiwpfdue
xiupwney
jbussffe
ziupwsey
jiupwfek
jiupwfey
jiupwfet
jiuowfey
jiupwfeh
tihpwfey
jmupwfey
jivpwfey
jiupwfvm
jiupwfmy
jiupwfeu")
    assert_equal(0, checksum)
  end

  it "Another sample made by myself (to debug) 2" do
    checksum = calculate_checksum_multiplying_2_and_3_apperances_in_candidate_list("
  aabcdd
aaabcde
abbcde
abcdee
ababab
abcabc")
    assert_equal(8, checksum)
  end

  it "Another sample made by myself (to debug) 3" do
    checksum = calculate_checksum_multiplying_2_and_3_apperances_in_candidate_list("
  abcdef
abcdee
abbcde
aabcdd
aabbcc
abcabc
aabccc")
    assert_equal(6, checksum)
  end

  it "Another sample made by myself (to debug) 4" do
    checksum = calculate_checksum_multiplying_2_and_3_apperances_in_candidate_list("
  aaaabb 
aaaabc 
abbbbc 
abcbbd 
abcccd 
aabbcd") 
    assert_equal(4, checksum)
  end

  it "Another sample made by myself (to debug) 5" do
    checksum = calculate_checksum_multiplying_2_and_3_apperances_in_candidate_list("
  xyzabc
xyzbca
xyzacb
xyzdef
abcdef") 
    assert_equal(0, checksum)
  end

  it "Another sample made by myself (to debug) 6" do
    checksum = calculate_checksum_multiplying_2_and_3_apperances_in_candidate_list("
aabbcd
aabbce
aabbcf
xyaabb
zzaabb
aabbzz") 
    assert_equal(0, checksum)
  end

  it "Another sample made by myself (to debug) 7" do
    checksum = calculate_checksum_multiplying_2_and_3_apperances_in_candidate_list("
aaabbb
aabbbc
abbbcc
aaabcc
abcccd
abbcdd
abcdee") 
    assert_equal(25, checksum)
  end

  it "Sample candidates from puzzle's input 2" do
    checksum = calculate_checksum_multiplying_2_and_3_apperances_in_candidate_list("
ybruvapdgixszyckwtfqjonsie
mbruvapxghslyyckwtfqjonsie
mbruvapdghslzyckwtkujonsie
rwruvapdghxlzyckwtfqjcnsie
obruvapdgtxlzyckwtfqionsie
lbruvapdghxqzyckwtfqjfnsie
mbrunapdghxlzyccatfqjonsie
mbruvapdghxlzyokltfqjdnsie
ybruvapdghxlzmckwtfqjmnsie
mbruwaadghxdzyckwtfqjonsie
muruvapdghxlzyckvtfqjonsim
mbruvapdghxlkyckwtxqjonjie
mbruvaqdghxlzyckwtfqjrnnie
mwruvapdghdlzyckttfqjonsie
mbruvapdgtelzyckwxfqjonsie
mbruvapdohxlzvckwtfqjonhie
mbrugapdgbxlzyckwtfqjynsie
mbruvapdghxlzyckwtlqjonjiu
mbruvapwghxlzyckwafqjonbie
wbruvapdghxlhyckwtfqjonsii
mbruvapdghxlzyckwtcqnonsiq
mbyuvapighxlzybkwtfqjonsie
mbrrvapdghxvzyckwtfqjonsio
mhruvapdghrlzyckwtfzjonsie
mtruvapvghxlzyckwtfnjonsie
mmrlhapdghxlzyckwtfqjonsie
mbruvapdgpxlzyjkwtfqjovsie
mbrucapdghxlzymkwtzqjonsie
mbeuvafdghxlzyckwtfqjonwie
mbruvapcghxlayckwtfqjonsii
mbruvabdghxlzyckwtfqyansie
mbruvjpdghxlzyckwtfqgfnsie
lbruvapdghxlzyckwtfqjonriv
mbrupapdghxlzycjwtfqronsie
mbpuvapdthxlzymkwtfqjonsie
mbiuvapdgixlzyckwxfqjonsie
mbruvapdghxyzyckwtfcjonsbe
mbrurapkghxlzyckwtfqjonzie
mbrufapdrhxlzyciwtfqjonsie
mbruvapdghxlzbckwtfqjoisae
ubruhapdghxlzuckwtfqjonsie
mbruvapdjhulzyckwtfqjonshe
mbruwapdgyxlzyckntfqjonsie
mwruvapdghplzyckwtfqjonsme
mbruvapjghtlzyckwtfqgonsie
pbruvapdghhlzyckwtfrjonsie
mbruvgpdihxqzyckwtfqjonsie
mbruvahdohxlzyckwtfijonsie
ibuuvapdghxlzyckwtfqjofsie
mbruvandghxlzyckwtfqjrnxie
mbrjvlpdghxlzyckwgfqjonsie
mbruvapogfxlzyckotfqjonsie
mbruvrpdghxlzyckutfejonsie
mbruvbpdghxlzyhkwtfqjonsip
mbruvapdghxlzyckmnfqjensie
mbruvapdghvlzyckwtfqjowsix
mbruvakdgholzwckwtfqjonsie
mbruvapdghxlzackwtfqconsae
mbruvapdghxlzyqvwtfqjlnsie
mprrvapdgfxlzyckwtfqjonsie
mbrunacdghxlhyckwtfqjonsie
obruvapdgsxlzyckwtfqjonvie
murcvapdghslzyckwtfqjonsie
mbruvapdghxlzyzkwmftjonsie
mbrwvapdgtvlzyckwtfqjonsie
mbxuvapdghxlzqcnwtfqjonsie
mbruvaddghxboyckwtfqjonsie
mhruvwndghxlzyckwtfqjonsie
mbrdvapdghxlzyckwmpqjonsie
mbruvapdgyxlzyckizfqjonsie
mbruvapdghxlzlckwtfqeowsie
mbruvbpdgrxlzyckwtfqjonsxe
mbruqapoghxlzyckwtvqjonsie
mbouhapdghmlzyckwtfqjonsie
mbruvapjghxidyckwtfqjonsie
mbsuvapkghxlkyckwtfqjonsie
mbruvlpdghxlzycrwtfqjonsis
mcrueapdghxlzyckwtfqjynsie
muruvapngbxlzyckwtfqjonsie
mbruvapdghxlzycawtfyjojsie
mbruvbpdghxczyjkwtfqjonsie
ybduvapdghxnzyckwtfqjonsie
mbruvbpdghxlzyckwtfbjousie
mbouvapdghxlzycbwtfqponsie
mbruvaedghplzycgwtfqjonsie
mbrhvapdghxlzyckytfqjgnsie
mbruvapdqbxleyckwtfqjonsie
mbruvapddhhldyckwtfqjonsie
mbruvapdghxlwrckwtfqjondie
mbruvapdmhxlzyckwtfqkonsve
xbbuvapdghxlzyckwtfkjonsie
mbruvapdghxlzyckwcfqjunkie
mbruvapdghxlzyckwtfqxonfib
mbrtvapkghxlzyckwtfqeonsie
mbruvazdghxldymkwtfqjonsie
kbruvapddhxlzfckwtfqjonsie
mbouvapdghxlpyckwtfqjoosie
mbauvapdghxlzyckwtfqjszsie
mbruvapdghtlzyckntfqtonsie
mbruvipdggxlzbckwtfqjonsie
mbruqapdghrlzyckwtfqjznsie
myruvacdghxlzyckwifqjonsie
mbruvapdghxlzuckwtfkjocsie
mwjuvapdghxlzyckwtfqjonsxe
mbruvapxghxlzickwtfqjobsie
mbrupapdghxtlyckwtfqjonsie
meruvapdjjxlzyckwtfqjonsie
mbruvkodghxlzyckwofqjonsie
mbruvapdgexlzyckwtgkjonsie
mbruvapwghxlzyckwtcqjonsiw
mbruvapdghxlzykkwtfqtoxsie
mbruvapdahxlzycgwtfwjonsie
mbruvapdgwxlhyckhtfqjonsie
mbruvapbghxlzycbhmfqjonsie
mbruvapdghxvzyzkwtfqjonsin
mbrcvapdqhxlzyckwyfqjonsie
zbruvaxdghxlzyckwgfqjonsie
mtruvapdghxlilckwtfqjonsie
bbruvapdghxlzyckwtfmjonsxe
mbruvajdghxlzyckwtfqfwnsie
mbruvapdgkxlzyckwtfqionpie
rbruvapdghxlryckwdfqjonsie
mbruvandghxlzyckwmfvjonsie
mbruvahdghxlzeckwtfqjonsme
mbruvnpcghxlzyckwtfqjobsie
mbruvapdghqlzyckwtfbjonsiy
mbruvavdghxlzyckwufqjodsie
mbruvapdghxlzyckwtfzmovsie
mbruvlpdghxuzyckwtfqjoesie
mbruvopdghxlzycwwtfqjansie
obruvapdghglzybkwtfqjonsie
mbpuvlpdghxlcyckwtfqjonsie
mbruvaidghxlzyckwtfmjonoie
mbruvapdihxzzyckwtfqjonsiy
mbquvapdghxlzyckwtfqconsme
mbruvapdghslzyckqtfqjojsie
mbrzdapdghxmzyckwtfqjonsie
mwruvapdghxozyckwtfqjonsxe
muruvapdgfxlzyckwtfqjojsie
wtruvapdghxlzyckvtfqjonsie
mbruvapdghxlzyckysfqjxnsie
mbruvrpdghxczyckktfqjonsie
mbquvapdghxlryckwtfqjonsne
mbruvapdghflzycvwtfqjpnsie
mbruvapughclzyckwtfqjonsin
mbrhvapdghxlpyckwtfqjonsre
mbruvapdgtxlzyckwtfqjoosit
mbrupapnghxhzyckwtfqjonsie
mmvuvapdvhxlzyckwtfqjonsie
mbruvaptghxlzyckwtfqjotsse
mgruvapvghxlzyckwtfqjonsix
mbrupapdghxszyckwtfqjunsie
mbruvkpdghelzyckwtfqjpnsie
mbruvrrdghjlzyckwtfqjonsie
mbruvapdghnlzyckwtfkjonsze
mbruvwpdghxlzyckwtfqhoysie
mbrsvapdfhxlzyckwtfqjobsie
mbruvapdgexezymkwtfqjonsie
ybruvapdghxlzyckwtfqxonsiw
mrruvapdghxdzyckwtfqjossie
mbruvapdghtlzyckwtfqconsiu
mbrpvapdghxlzlckwpfqjonsie
mbruvjpdghslzyckwtfqjjnsie
mhruvapoghxlzyckwtfvjonsie
mbrubqpdghvlzyckwtfqjonsie
mbruvapdghxlzackwtfqconsiw
mbruvapdgnxlzkckwtfqjdnsie
mbrudapgghelzyckwtfqjonsie
mbruvapdghxlzlakwbfqjonsie
mbpuvapdghxlzyckwtuqjonjie
abruvapdghxlzykkwtfqjonzie
mbrupupdghxlsyckwtfqjonsie
mbrsvupdghxlzyckwtfqjonkie
mxruvgpdghxllyckwtfqjonsie
mbrnvapdghxlzycbwtfqfonsie
mbrbxapdghxlzyckttfqjonsie
mbnuvapdghxlzyxkwtmqjonsie
mbrfvapdghjlzickwtfqjonsie
mbhuvupdghxlzyxkwtfqjonsie
mbrcvapdghxluyckwtfqjznsie
mbruvapdghxlzyckwofqjoxsiz
mbrevapdghxloyckwtfqjonnie
mbruvipdghnlzyckwtfqjopsie
mbxxvaptghxlzyckwtfqjonsie
mbruvcpdghxlztckwtjqjonsie
mqruvlpdghxlzyckotfqjonsie
mbruvapdgqxlzyckwtfqjpvsie
mbruvapdgvxlzyjkwtfqjbnsie
mbruvapdghxlgyckwtfqcocsie
mbruvapdghxkwyckwtfqjoqsie
mbrgvavdghxlzyckwxfqjonsie
qbruqapdgvxlzyckwtfqjonsie
mbauvapdghxlzgckwtfqjunsie
mbruvapdgdxluyckwtfqjoosie
mbruvapdghxlzykkwtfqwobsie
mbruvapdghxlzhcnwtfqjonqie
mbruvapdghxlzycbhmfqjonsie
mbruvapdghxluyczwtfqjontie
mbruvapnghxlzyckwnfqjonbie
moruvapdghxlzcckwtfqponsie
mbruvapfgxxlzyckwtfqjunsie
mbruvapdghxlryckvtfejonsie
mbrzvapdghxlzvcbwtfqjonsie
mbruvapdgqxlzyckwcfqjonsce
abruvupdrhxlzyckwtfqjonsie
mbrubaptghxlzyckwtfqjondie
mgruvapdgpxlzyckwtfijonsie
mbruvapdghxczlckwtfujonsie
mbruvapdgmmlzyckwtfqjonsir
mbruvapdhhxltyckwtfdjonsie
mbruvapdghxlzyckwtfdjjnste
mbrdvzpdghxlcyckwtfqjonsie
mbruvapdghxlzyckwtnqbonsim
mbrovapdghxlzyckwtfpjousie
mymuvapdghxlzyjkwtfqjonsie
mbpuvapdghxlzyckwtfljcnsie
mbrxvapdghxlzyclwtfqjonpie
mbrueapdghxlzyckwtfqjopsia
mbruvapdghxlzycdwtfqjbfsie
tbruvavdghxlzyckwtmqjonsie
mbduvapdghxlzyckwrfqjrnsie
mkrsvapughxlzyckwtfqjonsie
mbruvapdghylzyckwtfqtolsie
mgruvapdglxldyckwtfqjonsie
mbrunapdghclzyckwtfqjonsiy
mbruvapdgrxlxyckwtfgjonsie
mbruvapdghxpzbckftfqjonsie
mbruvcpdghxyzyckotfqjonsie
mbruvapdghxlsyckwtfqcqnsie
mbruvapdghxlzzckwtfqjonskf
mbruvppdghxlzfckwtfqjgnsie
mbhuvapdghxlzytkwtfqjonoie
mbruvapdghxlzvrkwtfqjjnsie
mbmuvapdghxuzyckwtfqjonsze
mbruvapdghnlzycnwtfqjonsil
mbruvapdgholzyckitfqjonsia
mbruxapdghxlmyckwtfqbonsie
mbauvapdgholzyckwtfqjolsie
mbruvapdghxlzyckwtfqjotslq
dbrutapdghxlzyckwtfqjonsiv
mbruvapdzhxlyyckwtfbjonsie
mmruaapsghxlzyckwtfqjonsie
mbruvaldgqxqzyckwtfqjonsie
mbruvaodghxdzyjkwtfqjonsie
mbrcmatdghxlzyckwtfqjonsie
mbrqvapdgtxlzycewtfqjonsie
mjruvapdghzlzyckwtfqjonrie
mbruvapdghxopcckwtfqjonsie
mbruvapdghxszycwwtfqjoqsie
mbruvapdgoxezyckwtjqjonsie")
    assert_equal(7192, checksum)
  end
end

describe "Recognize common letters among 2 product IDs by finding it's only distinct digit" do
  it "Sample from exercise" do
    common_letters = infer_common_letters_for_2_product_ids("
abcde
fghij
klmno
pqrst
fguij
axcye
wvxyz
")
    assert_equal("fgij", common_letters)
  end

  it "Sample from AOC" do
    common_letters = infer_common_letters_for_2_product_ids("
ybruvapdgixszyckwtfqjonsie
mbruvapxghslyyckwtfqjonsie
mbruvapdghslzyckwtkujonsie
rwruvapdghxlzyckwtfqjcnsie
obruvapdgtxlzyckwtfqionsie
lbruvapdghxqzyckwtfqjfnsie
mbrunapdghxlzyccatfqjonsie
mbruvapdghxlzyokltfqjdnsie
ybruvapdghxlzmckwtfqjmnsie
mbruwaadghxdzyckwtfqjonsie
muruvapdghxlzyckvtfqjonsim
mbruvapdghxlkyckwtxqjonjie
mbruvaqdghxlzyckwtfqjrnnie
mwruvapdghdlzyckttfqjonsie
mbruvapdgtelzyckwxfqjonsie
mbruvapdohxlzvckwtfqjonhie
mbrugapdgbxlzyckwtfqjynsie
mbruvapdghxlzyckwtlqjonjiu
mbruvapwghxlzyckwafqjonbie
wbruvapdghxlhyckwtfqjonsii
mbruvapdghxlzyckwtcqnonsiq
mbyuvapighxlzybkwtfqjonsie
mbrrvapdghxvzyckwtfqjonsio
mhruvapdghrlzyckwtfzjonsie
mtruvapvghxlzyckwtfnjonsie
mmrlhapdghxlzyckwtfqjonsie
mbruvapdgpxlzyjkwtfqjovsie
mbrucapdghxlzymkwtzqjonsie
mbeuvafdghxlzyckwtfqjonwie
mbruvapcghxlayckwtfqjonsii
mbruvabdghxlzyckwtfqyansie
mbruvjpdghxlzyckwtfqgfnsie
lbruvapdghxlzyckwtfqjonriv
mbrupapdghxlzycjwtfqronsie
mbpuvapdthxlzymkwtfqjonsie
mbiuvapdgixlzyckwxfqjonsie
mbruvapdghxyzyckwtfcjonsbe
mbrurapkghxlzyckwtfqjonzie
mbrufapdrhxlzyciwtfqjonsie
mbruvapdghxlzbckwtfqjoisae
ubruhapdghxlzuckwtfqjonsie
mbruvapdjhulzyckwtfqjonshe
mbruwapdgyxlzyckntfqjonsie
mwruvapdghplzyckwtfqjonsme
mbruvapjghtlzyckwtfqgonsie
pbruvapdghhlzyckwtfrjonsie
mbruvgpdihxqzyckwtfqjonsie
mbruvahdohxlzyckwtfijonsie
ibuuvapdghxlzyckwtfqjofsie
mbruvandghxlzyckwtfqjrnxie
mbrjvlpdghxlzyckwgfqjonsie
mbruvapogfxlzyckotfqjonsie
mbruvrpdghxlzyckutfejonsie
mbruvbpdghxlzyhkwtfqjonsip
mbruvapdghxlzyckmnfqjensie
mbruvapdghvlzyckwtfqjowsix
mbruvakdgholzwckwtfqjonsie
mbruvapdghxlzackwtfqconsae
mbruvapdghxlzyqvwtfqjlnsie
mprrvapdgfxlzyckwtfqjonsie
mbrunacdghxlhyckwtfqjonsie
obruvapdgsxlzyckwtfqjonvie
murcvapdghslzyckwtfqjonsie
mbruvapdghxlzyzkwmftjonsie
mbrwvapdgtvlzyckwtfqjonsie
mbxuvapdghxlzqcnwtfqjonsie
mbruvaddghxboyckwtfqjonsie
mhruvwndghxlzyckwtfqjonsie
mbrdvapdghxlzyckwmpqjonsie
mbruvapdgyxlzyckizfqjonsie
mbruvapdghxlzlckwtfqeowsie
mbruvbpdgrxlzyckwtfqjonsxe
mbruqapoghxlzyckwtvqjonsie
mbouhapdghmlzyckwtfqjonsie
mbruvapjghxidyckwtfqjonsie
mbsuvapkghxlkyckwtfqjonsie
mbruvlpdghxlzycrwtfqjonsis
mcrueapdghxlzyckwtfqjynsie
muruvapngbxlzyckwtfqjonsie
mbruvapdghxlzycawtfyjojsie
mbruvbpdghxczyjkwtfqjonsie
ybduvapdghxnzyckwtfqjonsie
mbruvbpdghxlzyckwtfbjousie
mbouvapdghxlzycbwtfqponsie
mbruvaedghplzycgwtfqjonsie
mbrhvapdghxlzyckytfqjgnsie
mbruvapdqbxleyckwtfqjonsie
mbruvapddhhldyckwtfqjonsie
mbruvapdghxlwrckwtfqjondie
mbruvapdmhxlzyckwtfqkonsve
xbbuvapdghxlzyckwtfkjonsie
mbruvapdghxlzyckwcfqjunkie
mbruvapdghxlzyckwtfqxonfib
mbrtvapkghxlzyckwtfqeonsie
mbruvazdghxldymkwtfqjonsie
kbruvapddhxlzfckwtfqjonsie
mbouvapdghxlpyckwtfqjoosie
mbauvapdghxlzyckwtfqjszsie
mbruvapdghtlzyckntfqtonsie
mbruvipdggxlzbckwtfqjonsie
mbruqapdghrlzyckwtfqjznsie
myruvacdghxlzyckwifqjonsie
mbruvapdghxlzuckwtfkjocsie
mwjuvapdghxlzyckwtfqjonsxe
mbruvapxghxlzickwtfqjobsie
mbrupapdghxtlyckwtfqjonsie
meruvapdjjxlzyckwtfqjonsie
mbruvkodghxlzyckwofqjonsie
mbruvapdgexlzyckwtgkjonsie
mbruvapwghxlzyckwtcqjonsiw
mbruvapdghxlzykkwtfqtoxsie
mbruvapdahxlzycgwtfwjonsie
mbruvapdgwxlhyckhtfqjonsie
mbruvapbghxlzycbhmfqjonsie
mbruvapdghxvzyzkwtfqjonsin
mbrcvapdqhxlzyckwyfqjonsie
zbruvaxdghxlzyckwgfqjonsie
mtruvapdghxlilckwtfqjonsie
bbruvapdghxlzyckwtfmjonsxe
mbruvajdghxlzyckwtfqfwnsie
mbruvapdgkxlzyckwtfqionpie
rbruvapdghxlryckwdfqjonsie
mbruvandghxlzyckwmfvjonsie
mbruvahdghxlzeckwtfqjonsme
mbruvnpcghxlzyckwtfqjobsie
mbruvapdghqlzyckwtfbjonsiy
mbruvavdghxlzyckwufqjodsie
mbruvapdghxlzyckwtfzmovsie
mbruvlpdghxuzyckwtfqjoesie
mbruvopdghxlzycwwtfqjansie
obruvapdghglzybkwtfqjonsie
mbpuvlpdghxlcyckwtfqjonsie
mbruvaidghxlzyckwtfmjonoie
mbruvapdihxzzyckwtfqjonsiy
mbquvapdghxlzyckwtfqconsme
mbruvapdghslzyckqtfqjojsie
mbrzdapdghxmzyckwtfqjonsie
mwruvapdghxozyckwtfqjonsxe
muruvapdgfxlzyckwtfqjojsie
wtruvapdghxlzyckvtfqjonsie
mbruvapdghxlzyckysfqjxnsie
mbruvrpdghxczyckktfqjonsie
mbquvapdghxlryckwtfqjonsne
mbruvapdghflzycvwtfqjpnsie
mbruvapughclzyckwtfqjonsin
mbrhvapdghxlpyckwtfqjonsre
mbruvapdgtxlzyckwtfqjoosit
mbrupapnghxhzyckwtfqjonsie
mmvuvapdvhxlzyckwtfqjonsie
mbruvaptghxlzyckwtfqjotsse
mgruvapvghxlzyckwtfqjonsix
mbrupapdghxszyckwtfqjunsie
mbruvkpdghelzyckwtfqjpnsie
mbruvrrdghjlzyckwtfqjonsie
mbruvapdghnlzyckwtfkjonsze
mbruvwpdghxlzyckwtfqhoysie
mbrsvapdfhxlzyckwtfqjobsie
mbruvapdgexezymkwtfqjonsie
ybruvapdghxlzyckwtfqxonsiw
mrruvapdghxdzyckwtfqjossie
mbruvapdghtlzyckwtfqconsiu
mbrpvapdghxlzlckwpfqjonsie
mbruvjpdghslzyckwtfqjjnsie
mhruvapoghxlzyckwtfvjonsie
mbrubqpdghvlzyckwtfqjonsie
mbruvapdghxlzackwtfqconsiw
mbruvapdgnxlzkckwtfqjdnsie
mbrudapgghelzyckwtfqjonsie
mbruvapdghxlzlakwbfqjonsie
mbpuvapdghxlzyckwtuqjonjie
abruvapdghxlzykkwtfqjonzie
mbrupupdghxlsyckwtfqjonsie
mbrsvupdghxlzyckwtfqjonkie
mxruvgpdghxllyckwtfqjonsie
mbrnvapdghxlzycbwtfqfonsie
mbrbxapdghxlzyckttfqjonsie
mbnuvapdghxlzyxkwtmqjonsie
mbrfvapdghjlzickwtfqjonsie
mbhuvupdghxlzyxkwtfqjonsie
mbrcvapdghxluyckwtfqjznsie
mbruvapdghxlzyckwofqjoxsiz
mbrevapdghxloyckwtfqjonnie
mbruvipdghnlzyckwtfqjopsie
mbxxvaptghxlzyckwtfqjonsie
mbruvcpdghxlztckwtjqjonsie
mqruvlpdghxlzyckotfqjonsie
mbruvapdgqxlzyckwtfqjpvsie
mbruvapdgvxlzyjkwtfqjbnsie
mbruvapdghxlgyckwtfqcocsie
mbruvapdghxkwyckwtfqjoqsie
mbrgvavdghxlzyckwxfqjonsie
qbruqapdgvxlzyckwtfqjonsie
mbauvapdghxlzgckwtfqjunsie
mbruvapdgdxluyckwtfqjoosie
mbruvapdghxlzykkwtfqwobsie
mbruvapdghxlzhcnwtfqjonqie
mbruvapdghxlzycbhmfqjonsie
mbruvapdghxluyczwtfqjontie
mbruvapnghxlzyckwnfqjonbie
moruvapdghxlzcckwtfqponsie
mbruvapfgxxlzyckwtfqjunsie
mbruvapdghxlryckvtfejonsie
mbrzvapdghxlzvcbwtfqjonsie
mbruvapdgqxlzyckwcfqjonsce
abruvupdrhxlzyckwtfqjonsie
mbrubaptghxlzyckwtfqjondie
mgruvapdgpxlzyckwtfijonsie
mbruvapdghxczlckwtfujonsie
mbruvapdgmmlzyckwtfqjonsir
mbruvapdhhxltyckwtfdjonsie
mbruvapdghxlzyckwtfdjjnste
mbrdvzpdghxlcyckwtfqjonsie
mbruvapdghxlzyckwtnqbonsim
mbrovapdghxlzyckwtfpjousie
mymuvapdghxlzyjkwtfqjonsie
mbpuvapdghxlzyckwtfljcnsie
mbrxvapdghxlzyclwtfqjonpie
mbrueapdghxlzyckwtfqjopsia
mbruvapdghxlzycdwtfqjbfsie
tbruvavdghxlzyckwtmqjonsie
mbduvapdghxlzyckwrfqjrnsie
mkrsvapughxlzyckwtfqjonsie
mbruvapdghylzyckwtfqtolsie
mgruvapdglxldyckwtfqjonsie
mbrunapdghclzyckwtfqjonsiy
mbruvapdgrxlxyckwtfgjonsie
mbruvapdghxpzbckftfqjonsie
mbruvcpdghxyzyckotfqjonsie
mbruvapdghxlsyckwtfqcqnsie
mbruvapdghxlzzckwtfqjonskf
mbruvppdghxlzfckwtfqjgnsie
mbhuvapdghxlzytkwtfqjonoie
mbruvapdghxlzvrkwtfqjjnsie
mbmuvapdghxuzyckwtfqjonsze
mbruvapdghnlzycnwtfqjonsil
mbruvapdgholzyckitfqjonsia
mbruxapdghxlmyckwtfqbonsie
mbauvapdgholzyckwtfqjolsie
mbruvapdghxlzyckwtfqjotslq
dbrutapdghxlzyckwtfqjonsiv
mbruvapdzhxlyyckwtfbjonsie
mmruaapsghxlzyckwtfqjonsie
mbruvaldgqxqzyckwtfqjonsie
mbruvaodghxdzyjkwtfqjonsie
mbrcmatdghxlzyckwtfqjonsie
mbrqvapdgtxlzycewtfqjonsie
mjruvapdghzlzyckwtfqjonrie
mbruvapdghxopcckwtfqjonsie
mbruvapdghxszycwwtfqjoqsie
mbruvapdgoxezyckwtjqjonsie
")
    assert_equal("mbruvapghxlzycbhmfqjonsie", common_letters)
  end
end