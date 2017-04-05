# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
personality_analysis = {"word_count"=>304, "word_count_message"=>"There were 304 words in the input. We need a minimum of 600, preferably 1,200 or more, to compute statistically significant estimates", "processed_language"=>"en", "personality"=>[{"trait_id"=>"big5_openness", "name"=>"Openness", "category"=>"personality", "percentile"=>0.8920159522459417, "children"=>[{"trait_id"=>"facet_adventurousness", "name"=>"Adventurousness", "category"=>"personality", "percentile"=>0.1715171040634833}, {"trait_id"=>"facet_artistic_interests", "name"=>"Artistic interests", "category"=>"personality", "percentile"=>0.1955083262125657}, {"trait_id"=>"facet_emotionality", "name"=>"Emotionality", "category"=>"personality", "percentile"=>0.03496385695555865}, {"trait_id"=>"facet_imagination", "name"=>"Imagination", "category"=>"personality", "percentile"=>0.8102330159929699}, {"trait_id"=>"facet_intellect", "name"=>"Intellect", "category"=>"personality", "percentile"=>0.9336028508964827}, {"trait_id"=>"facet_liberalism", "name"=>"Authority-challenging", "category"=>"personality", "percentile"=>0.3893894393458658}]}, {"trait_id"=>"big5_conscientiousness", "name"=>"Conscientiousness", "category"=>"personality", "percentile"=>0.797148173355632, "children"=>[{"trait_id"=>"facet_achievement_striving", "name"=>"Achievement striving", "category"=>"personality", "percentile"=>0.38929711770519915}, {"trait_id"=>"facet_cautiousness", "name"=>"Cautiousness", "category"=>"personality", "percentile"=>0.04928231019609036}, {"trait_id"=>"facet_dutifulness", "name"=>"Dutifulness", "category"=>"personality", "percentile"=>0.42794958874889977}, {"trait_id"=>"facet_orderliness", "name"=>"Orderliness", "category"=>"personality", "percentile"=>0.06885749631672627}, {"trait_id"=>"facet_self_discipline", "name"=>"Self-discipline", "category"=>"personality", "percentile"=>0.38698303006942664}, {"trait_id"=>"facet_self_efficacy", "name"=>"Self-efficacy", "category"=>"personality", "percentile"=>0.8964325238336481}]}, {"trait_id"=>"big5_extraversion", "name"=>"Extraversion", "category"=>"personality", "percentile"=>0.4219451738760621, "children"=>[{"trait_id"=>"facet_activity_level", "name"=>"Activity level", "category"=>"personality", "percentile"=>0.715059025875586}, {"trait_id"=>"facet_assertiveness", "name"=>"Assertiveness", "category"=>"personality", "percentile"=>0.8374405187928043}, {"trait_id"=>"facet_cheerfulness", "name"=>"Cheerfulness", "category"=>"personality", "percentile"=>0.19953812271927435}, {"trait_id"=>"facet_excitement_seeking", "name"=>"Excitement-seeking", "category"=>"personality", "percentile"=>0.9460752365019818}, {"trait_id"=>"facet_friendliness", "name"=>"Outgoing", "category"=>"personality", "percentile"=>0.6549753149924944}, {"trait_id"=>"facet_gregariousness", "name"=>"Gregariousness", "category"=>"personality", "percentile"=>0.5475295771829306}]}, {"trait_id"=>"big5_agreeableness", "name"=>"Agreeableness", "category"=>"personality", "percentile"=>0.027329332526756456, "children"=>[{"trait_id"=>"facet_altruism", "name"=>"Altruism", "category"=>"personality", "percentile"=>0.24616631498860636}, {"trait_id"=>"facet_cooperation", "name"=>"Cooperation", "category"=>"personality", "percentile"=>0.21710648055418286}, {"trait_id"=>"facet_modesty", "name"=>"Modesty", "category"=>"personality", "percentile"=>0.013524022979323369}, {"trait_id"=>"facet_morality", "name"=>"Uncompromising", "category"=>"personality", "percentile"=>0.008756023063130225}, {"trait_id"=>"facet_sympathy", "name"=>"Sympathy", "category"=>"personality", "percentile"=>0.2001182981209086}, {"trait_id"=>"facet_trust", "name"=>"Trust", "category"=>"personality", "percentile"=>0.9165621255173004}]}, {"trait_id"=>"big5_neuroticism", "name"=>"Emotional range", "category"=>"personality", "percentile"=>0.6949820317911161, "children"=>[{"trait_id"=>"facet_anger", "name"=>"Fiery", "category"=>"personality", "percentile"=>0.9015630027467374}, {"trait_id"=>"facet_anxiety", "name"=>"Prone to worry", "category"=>"personality", "percentile"=>0.7716332349386581}, {"trait_id"=>"facet_depression", "name"=>"Melancholy", "category"=>"personality", "percentile"=>0.6622641130666159}, {"trait_id"=>"facet_immoderation", "name"=>"Immoderation", "category"=>"personality", "percentile"=>0.5896991541082097}, {"trait_id"=>"facet_self_consciousness", "name"=>"Self-consciousness", "category"=>"personality", "percentile"=>0.6569335301761008}, {"trait_id"=>"facet_vulnerability", "name"=>"Susceptible to stress", "category"=>"personality", "percentile"=>0.6593442575257169}]}], "needs"=>[{"trait_id"=>"need_challenge", "name"=>"Challenge", "category"=>"needs", "percentile"=>0.9297611458776316}, {"trait_id"=>"need_closeness", "name"=>"Closeness", "category"=>"needs", "percentile"=>0.281157547160065}, {"trait_id"=>"need_curiosity", "name"=>"Curiosity", "category"=>"needs", "percentile"=>0.5070076365095771}, {"trait_id"=>"need_excitement", "name"=>"Excitement", "category"=>"needs", "percentile"=>0.8151422050489516}, {"trait_id"=>"need_harmony", "name"=>"Harmony", "category"=>"needs", "percentile"=>0.09471578953161897}, {"trait_id"=>"need_ideal", "name"=>"Ideal", "category"=>"needs", "percentile"=>0.7836814358056736}, {"trait_id"=>"need_liberty", "name"=>"Liberty", "category"=>"needs", "percentile"=>0.47158859065826775}, {"trait_id"=>"need_love", "name"=>"Love", "category"=>"needs", "percentile"=>0.6734278161786725}, {"trait_id"=>"need_practicality", "name"=>"Practicality", "category"=>"needs", "percentile"=>0.9258276879826421}, {"trait_id"=>"need_self_expression", "name"=>"Self-expression", "category"=>"needs", "percentile"=>0.037990789338799125}, {"trait_id"=>"need_stability", "name"=>"Stability", "category"=>"needs", "percentile"=>0.02107210883251892}, {"trait_id"=>"need_structure", "name"=>"Structure", "category"=>"needs", "percentile"=>0.7226053348421798}], "values"=>[{"trait_id"=>"value_conservation", "name"=>"Conservation", "category"=>"values", "percentile"=>0.06227095926670351}, {"trait_id"=>"value_openness_to_change", "name"=>"Openness to change", "category"=>"values", "percentile"=>0.7455082615970712}, {"trait_id"=>"value_hedonism", "name"=>"Hedonism", "category"=>"values", "percentile"=>0.33746510470216545}, {"trait_id"=>"value_self_enhancement", "name"=>"Self-enhancement", "category"=>"values", "percentile"=>0.8965654085220163}, {"trait_id"=>"value_self_transcendence", "name"=>"Self-transcendence", "category"=>"values", "percentile"=>0.005015348094442873}], "warnings"=>[{"warning_id"=>"WORD_COUNT_MESSAGE", "message"=>"There were 304 words in the input. We need a minimum of 600, preferably 1,200 or more, to compute statistically significant estimates"}]}


User.destroy_all
User.create(name: "yogi")


# Personality.destroy_all
# Personality.create(user_id: User.find_by(name: "yogi"))

#body, analysis, user_id
Blurb.destroy_all
Blurb.create(
  user_id: User.find_by(name: "yogi").id,
  body: "It ain't over till it's over."
)
Blurb.create(
  user_id: User.find_by(name: "yogi").id,
  body: "Baseball is ninety percent mental and the other half is physical."
)
Blurb.create(
  user_id: User.find_by(name: "yogi").id,
  body: "I never blame myself when I'm not hitting. I just blame the bat and if it keeps up, I change bats. After all, if I know it isn't my fault that I'm not hitting, how can I get mad at myself?"
)
Blurb.create(
  user_id: User.find_by(name: "yogi").id,
  body: "I don't blame the players today for the money. I blame the owners. They started it. They wanna give it to 'em? More power to 'em."
)
Blurb.create(
  user_id: User.find_by(name: "yogi").id,
  body: "I always got nervous the nights we played in the World Series. First pitch, I was nervous. Then after that, forget it; I'd start playing."
)
