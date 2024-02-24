import 'image/image_helper.dart';

const String privacyTermsText = """
The prohibited or acceptable use clause in your terms of use agreement outlines all rules your users must follow when accessing your services.
Here is where you can list and ban behaviors and activities like:
 - Obscene, crude, or violent posts
 - False or misleading content
 - Breaking the law
 - Spamming or scamming the service or other users
 - Hacking or tampering with your website or app
 - Violating copyright laws
 - Harassing other users
 - Stalking other users
If your website or app gives users a lot of control and freedom while using your services, consider putting multiple use clauses within your terms of use.

  The prohibited or acceptable use clause in your terms of use agreement outlines all rules your users must follow when accessing your services.
  Here is where you can list and ban behaviors and activities like:
  - Obscene, crude, or violent posts
  - False or misleading content
  - Breaking the law
  - Spamming or scamming the service or other users
  - Hacking or tampering with your website or app
  - Violating copyright laws
  - Harassing other users
  - Stalking other users
  If your website or app gives users a lot of control and freedom while using your services, consider putting multiple use clauses within your terms of use.
  
  The prohibited or acceptable use clause in your terms of use agreement outlines all rules your users must follow when accessing your services.
  Here is where you can list and ban behaviors and activities like:
  - Obscene, crude, or violent posts
  - False or misleading content
  - Breaking the law
  - Spamming or scamming the service or other users
  - Hacking or tampering with your website or app
  - Violating copyright laws
  - Harassing other users
  - Stalking other users
  If your website or app gives users a lot of control and freedom while using your services, consider putting multiple use clauses within your terms of use.
""";

const combDescriptions = [
  'Sadly, the cards in your hand will often miss the community cards entirely. Whenever that happens, your highest cards will be compared to the other player’s to determine a winner. An ace is a powerful card to have when neither player connects their hand to the board, like in the illustration here. The winner’s hand is referred to as “ace-high”, while the loser’s hand is called “king-high”.',
  'Matching one of your cards to a community card gives you one pair. They can also be made by holding two matching cards, called a “pocket pair”. The third way to have a pair is by using matching cards on the table.\nExpect to pair one of your cards on almost a third of the flops you see.',
  'You can have two pairs by connecting both of your cards to the board, or by using two pairs within the community cards. It’s possible to have three pairs, though it’s useless to have more than two at showdown. Maybe you make two pairs using your cards, but a third pair appears within the community cards. The two highest two pairs will be your combination at showdown.',
  """
  Like the name suggests, three-of-a-kind means having three matching cards. Just like with pairs, you can use the cards in your hand or community cards exclusively. Let’s talk about the terms “trips” and “sets”.
Trips:
When you hear another player say they have trips, it means one of their cards matches a pair on the board. Both players in the example below have trips.
Sets:
When you are dealt a pocket pair (two matching cards), you might be able to make a set. It’s a strong hand that will be very disguised from your opponents.
""",
  """
  This is a sequence of five cards of any suit. You don’t have to use both of your cards to make a straight. Aces can function as a one or follow a king in a sequence. The lowest straight combinations start with an ace, and the highest combinations end with an ace too.
  In our example, the winning player had a gutshot straight draw on the flop. They completed their draw on the turn and beat the opponent's two-pair.
  """,
  """
  There’s no need for the cards to be in a sequence for a flush, but they must all have the same suit. The ace is the highest-value card in a flush, so it’s ideal to hold it in your hand to beat other flushes.
  Flushes can be made with three community cards, like in our illustration. You can also form one with four suited community cards, plus a matching card from your hand. Sometimes all of the cards on the board have the same suit. If that happens, players will have to show a card that improves the shared flush to win.
Lets imagine that the 5 community cards are 5-6-3-8-9, all of the spades suit. Both players have flushes, but one player reveals a 4 of spades in their hand. They can replace the 3 of spades from the community cards, improving the flush and winning the hand in the process.
  """,
  """
  There are a few ways to make a full house, just like the other poker hand combinations. Simply put, a full house is one pair and three-of-a-kind. Check out our example to see how one full house can outrank another.
  Poker players describe this winning hand as aces over eights or aces full of eights. That’s three-of-a-kind aces and a pair of eights, which beats the eights full of aces (three-of-a-kind eights and a pair of aces) held by the other player. The player with the higher three-of-a-kind combination always wins.
  """,
  """ 
  Don’t expect to see this hand on the table often, because it's one of the rarest poker hand combinations. We can casually call this combination “quads”.
  There are a few recorded instances on Youtube where two players have different four-of-a-kinds during the same hand. The shock around the table when the cards are shown is amazing to watch.
  """,
  'When the stars align, you might see a straight flush on a poker table. A straight flush is five sequential cards of the same suit. They’re ultra-rare and unbeatable, except for higher straight flushes. As unlikely as it is to be beaten, there are unbelievable videos of it happening.',
  """ 
  This poker hand combination is so improbable that it probably appears in movies more than real life. Straights from ace to 10 of suited cards forms a royal flush.
  Your only problem after making a royal flush is extracting value from your opponents. With such a powerful hand, you’ll have to tread carefully or you might waste this amazing combination.
Still have any questions? Feel free to ask our Support Team anything! 
  """,
];

const combNames = [
  'High Card',
  'One pair',
  'Two Pair',
  'Three Of A Kind',
  'Straight',
  'Flush',
  'Full House',
  'Four Of A Kind',
  'Royal Flush',
];

const combImages = [
  ImageNames.comb_1, // High Card
  ImageNames.comb_2, // One pair
  ImageNames.comb_3, // Two Pair
  ImageNames.comb_4, // Three Of A Kind
  ImageNames.comb_5, // Straight
  ImageNames.comb_6, // Flush
  ImageNames.comb_7, // Full House
  ImageNames.comb_8, // Four Of A Kind
  ImageNames.comb_9, // Royal Flush
];

const articleImages = [
  ImageNames.categoryCard_1,
  ImageNames.categoryCard_2,
  ImageNames.categoryCard_3,
];

const titles = [
  '1. History of poker',
  '2. Varieties of poker',
  '3. Psychology of poker',
  '4. Mathematics and statistics in poker',
  '5. Poker strategies',
  '6. Bluffing and reading opponents',
  '7. Poker\'s influence on society and culture',
  '8. Ethics and morality in poker',
  '9. Poker as a sport',
  '10. Poker in cinema and literature',
  '11. Women in poker',
  '12. Gambling addiction and problems of the social aspect of poker',
  '13. Online poker and its impact on the gaming industry',
  '14. Poker tournaments and World Series of Poker',
  '15. Poker streams and game commentary',
  '16. Poker training and game training',
  '17. Poker geniuses and legends of the game',
  '18. Poker communities and forums',
  '19. Financial Aspects of Poker and Bankroll Management',
  '20. Poker and Probability: Calculating Odds of Winning',
];

const articles = [
  article_1,
  article_2,
  article_3,
  article_4,
  article_5,
  article_6,
  article_7,
  article_8,
  article_9,
  article_10,
  article_11,
  article_12,
  article_13,
  article_14,
  article_15,
  article_16,
  article_17,
  article_18,
  article_19,
  article_20,
];

const article_1 =
    'The history of poker goes back a long way. The first mentions of a game similar to modern poker can be found in ancient Chinese and Indian texts that date back to the 10th and 11th centuries. However, the real heyday of poker came in the 19th century, when the game became popular in the USA and became firmly established. American culture.\nAt that time, poker was a game for men, often associated with the wild west and saloons. An important moment in the history of poker was the emergence of various varieties of the game. One of the most popular was Texas Hold\'em, which became the basis for many poker tournaments and championships.\nWith the development of technology and the advent of the Internet, poker moved into the online space, which significantly expanded its audience and popularity. Online poker has become accessible to everyone and has attracted a large number of beginners, as well as professionals who are looking to make money on the game.\nToday, poker is one of the most popular card games in the world. There are many tournaments and championships held every year where the best players compete for millions of dollars in prize money. Poker has also become the subject of study by researchers who study its strategies, mathematics, and psychology.\nThe history of poker demonstrates its uniqueness and ability to adapt to different conditions and trends. This game brings people together from all over the world and encourages the development of skills such as analytical thinking, decision-making under uncertainty, and the ability to read opponents. Poker is not only a game of luck but also an art that requires craftsmanship and skills.';

const article_2 =
    'Varieties of poker are unique variations of this popular card game, each with its own features and rules. Options Poker games vary in the number of cards, the method of dealing, the combinations that can\nbe made, and the strategies of the game.\nOne of the most popular varieties of poker is Texas Hold\'em. In this game, players are dealt two hole cards and then five community cards appear on the table. Players must make the best combination of their two cards and five community cards to win the round.\nAnother popular poker variation is Omaha. In Omaha, players are also dealt four cards, but unlike Hold\'em, players must use two of their cards and three community cards to make a hand.\nAnother interesting variation of poker is Stud. In Stud, players are dealt cards both face down and face up. Players place bets at each stage of the card dealt, and the player\'s hand may change depending on open cards.\nAnother popular poker variation is Ripped Poker. In this game, players are dealt cards and then can exchange any number of cards to improve their hand.\nThere are also many other poker variations such as Stud Hi/Lo, Ripped Hi/Lo, Chinese Poker and many more. Each of these varieties has its own unique rules and game strategies, which makes poker fun and varied.\nVarious variations of poker allow players to choose the option that best suits their preferences and playing style. They also provide the opportunity to develop different skills and strategies, which makes poker interesting and challenging to constantly improve. Ultimately, the variety of poker variations makes it a versatile game that can captivate and entertain anyone who decides to try their hand at it.';

const article_3 =
    'Poker psychology is a field that studies the relationship between psychological aspects and the game of poker. This science examines how players\' thoughts, emotions, and behaviors influence their decision making and game outcomes.\nOne of the key aspects of poker psychology is managing emotions. While playing poker, players may experience various emotions such as joy, anger, fear, or disappointment. The ability to control these emotions and make rational decisions is important for successful gaming. Players must be able to remain calm and not let their emotions influence their actions.\nAnother important aspect of poker psychology is reading your opponents. Players must be attentive to the unspoken words and gestures of their opponents in order to understand their intentions and strategies. The ability to “read” opponents can help players make the right decisions and improve their chances of winning.\nAnother important aspect of poker psychology is the ability to bluff. A bluff is a strategic lie where a player bets or raises to force opponents to fold. Successful bluffing requires a good understanding of the psychology of your opponents and the ability to read their reactions. However, bluffing can be dangerous, and players must be careful not to get caught.\nFinally, poker psychology also touches on bankroll management and the ability to make rational decisions about bet sizes and risk levels. Players must be able to control their finances and not gamble with amounts they cannot afford to lose.\nOverall, poker psychology plays an important role in a player\'s success. The ability to control emotions, read opponents, bluff, and make rational decisions are key skills that help players succeed in this exciting game.';

const article_4 =
    'Mathematics and statistics play an important role in poker. These sciences help players make rational decisions and improve their chances of winning.\nOne of the key aspects of mathematics in poker is the calculation of probabilities. Players can use mathematical formulas and statistics to determine the likelihood that they or their opponents have a certain combination of cards. For example, a player can calculate the probability of receiving a royal flush or straight and, based on this information, decide whether to bet or fold.\nAnother important aspect of poker mathematics is the calculation of expected value (EV). Expected value is a mathematical value that shows how much a player can expect to win or lose over the long term. Players can use this concept to determine whether they should continue playing or fold. If the expected value is positive, then the player can expect to win in the long run, and if it is negative, then the player can expect to lose.\nStatistics also play an important role in poker. Players can use statistics about their opponents to decide their actions. For example, a player can analyze statistics about how often an opponent bets or folds to understand his strategy and make appropriate decisions.\nIn addition, statistics can be useful for analyzing your own game. Players can use statistics from their previous games to identify their strengths and weaknesses and improve their strategy.\nIn general, mathematics and statistics are important tools in poker. Players who can use these sciences to analyze probabilities and make rational decisions have a better chance of success in this fun game.';

const article_5 =
    'Poker strategy is a key aspect of success in this exciting card game. A well-designed strategy allows the player to make rational decisions and maximize his chances of winning.\nOne of the main strategies in poker is the bluff strategy. A bluff is an action in which a player bets or raises without having a strong hand of cards in hopes of getting his opponents to fold their cards. Bluffing can be a very effective tool if used at the right time and against the right opponents. However, bluffing can also be dangerous because if it is caught, the player can lose a large number of chips.\nAnother important strategy in poker is the strategy of playing strong card combinations. If a player has a strong hand such as a flush or straight, then he should try to maximize his winnings by betting and raising. However, the player must also be careful and not be too aggressive so as not to scare off his opponents and force them to fold.\nAnother important strategy in poker is the strategy of reading your opponents. The player must pay attention to the actions and behavior of his opponents to understand what cards they may have and what decisions they may make. This allows the player to make more informed decisions and adapt his strategy according to the actions of his opponents.\nAdditionally, it is important to have a bankroll management strategy. Bankroll is the amount of money a player allocates to play poker. The player must set betting limits and monitor his finances to avoid large losses. This allows the player to play longer and have a better chance of winning.\nOverall, poker strategy is a comprehensive approach that includes bluffing, playing strong card combinations, reading opponents, and managing your bankroll. Players who can develop a good strategy and apply it to the game have a better chance of success and achieving their poker goals.';

const article_6 =
    'Bluffing and reading your opponents are two key aspects of poker strategy. Both of these skills require a good understanding of the game and the ability to analyze information.\nA bluff is an action in which a player bets or raises without having a strong hand of cards in hopes of getting his opponents to fold their cards. Bluffing can be a very effective tool if used at the right time and against the right opponents. However, bluffing can also be dangerous because if it is caught, the player can lose a large number of chips.\nReading opponents is the ability to analyze the actions and behavior of your opponents to understand what cards they may have and what decisions they may make. This allows the player to make more informed decisions and adapt your strategy according to the actions of your opponents. For example, if a player notices that his opponent often bets when he has a weak hand, he can use this information and bluff harder to force him to fold.\nReading opponents also allows a player to determine when his own hand of cards is strong or weak. For example, if a player notices that his opponent is nervous or unsure, this may be a sign that he has a weak hand. In this case, the player can make more aggressive bets and raises to maximize his chances of winning.\nBluffing and reading your opponents are related skills that require practice and experience. The more a player plays and analyzes the actions of his opponents, the better he becomes at reading their intentions. It is also important to remember that bluffing and reading opponents is not a guarantee of success, and sometimes even experienced players can make mistakes. Therefore, the player must be prepared for the possibility of failure and have a backup plan.\nOverall, bluffing and reading opponents are important strategic skills in poker, which help the player make rational decisions and maximize their chances of winning. When these skills are used correctly, a player can achieve success and win more games in poker.';

const article_7 =
    'Poker is not just a game, it is also a phenomenon that has a significant impact on society and culture. You can learn a lot about people from poker, exploring their skills, strategies, and ability to make decisions in complex situations.\nPoker\'s impact on society comes in several ways. Firstly, poker helps develop communication and social interaction skills. During the game, players communicate with each other, observe the actions of other players and try to understand their strategies. This requires the ability to listen and analyze information, as well as the ability to express one\'s thoughts and \nSecondly, poker can have an impact on the economy and finances. Poker - is a game based on strategy and mathematics where players try to make rational decisions based on probabilities and expected value. These skills can be useful not only in the game, but also in real life, especially in financial investments and business decisions. Moreover, poker also helps develop financial literacy and the ability to manage your finances.\nFinally, poker has a significant impact on culture. It has become an integral part of many cultures and traditions, and is often associated with the image of an "underground" or "mysterious" game. Poker is often depicted in film and literature, where it serves as a symbol of intrigue, risk and excitement. This creates a certain romance around the game and makes it attractive to many people.\nOverall, poker has a significant impact on society and culture. It develops communication and social skills, promotes economic and financial literacy, and has become an integral part of cultural heritage. Poker is not just a game, it is a phenomenon that reflects the characteristics and values of the society in which it is played.';

const article_8 =
    'Ethics and morality play an important role in poker as they define the rules and standards of behavior for players. In poker there are several ethical principles that help maintain integrity and fairness in the game.\nFirstly, one of the main ethical principles in poker is honesty. Players must be honest and not use prohibited methods such as marking cards or deceiving opponents. Honesty also means respecting rules of the game and respect for other players.\nSecondly, morality in poker is about respect for other players. This means that players must not violate the rules of conduct, insult or humiliate other participants in the game. Respect also includes the ability to accept defeat with dignity and not show aggression or anger when losing.\nAnother important ethical aspect in poker is responsible gambling. This means that gamblers must control their emotions and finances to avoid problems with gambling addiction. Players must be conscious and rational in their decisions, and not jeopardize their financial position or life.\nIn addition, morality in poker is also related to fairness and equality. Players should have equal opportunity and rights to win, and the winner should be decided based on skill and strategy, not bias or discrimination.\nOverall, ethics and morality play an important role in poker, helping to maintain honesty, respect and responsibility. Following ethical principles not only promotes fair play, but also creates a healthy and enjoyable environment for everyone involved.';

const article_9 =
    'Poker is undoubtedly one of the most popular card games in the world. But can it be called a sport? This issue causes debate and disagreement among people. However, there are arguments that poker is indeed a sport.\nFirstly, poker requires physical and mental preparation. To be a successful poker player, you need to have good concentration, quick reactions and the ability to make decisions in difficult situations. In addition, playing poker requires physical endurance, especially during long periods of time.\nSecondly, poker has its own rules and strategies that players must learn and improve. Like any other sport, poker players must practice and develop their skills in order to achieve success. They must also be willing to adapt to the different play styles and strategies of their rivals.\nThirdly, poker has its own professional leagues and tournaments, where players compete for prizes and titles. This confirms poker\'s status as a sport where players prove their skill and ability to withstand rivals.\nIn addition, poker also develops some important skills that can be applied to other areas of life. For example, poker helps develop the ability to analyze information, make decisions based on probabilities, and manage your emotions. These skills can be useful not only in gaming, but also in business, scientific research and other fields of activity.\nIn conclusion, poker has all the hallmarks of a sport: physical and mental preparation, rules and strategies, competition and skill development. Although it may be controversial among people, there is no denying that poker deserves its status as a sport. It requires effort and dedication, and players can achieve great results in it, just like in any other sport.';

const article_10 =
    'Poker is a game that has gained popularity not only in real life, but also in cinema and literature. Its unique atmosphere and ability to create tense situations make it ideal material for a variety of stories. In movies, poker is often used as a way to show characters\' personalities and motivations. In films such as Casino Royale and Maverick, poker becomes a central element of the plot. Here we see the main characters fighting for money and power using your intellectual and strategic skills. The poker scenes in these films create tension and dramatic suspense, making them entertaining for the audience.\nPoker also appears frequently in literature. In novels and short stories, poker can be used as a symbolic element, reflecting complex relationships between characters or their internal conflicts. For example, in the novel Lock, Stock and Two Smoking Barrels, poker is one of the ways to solve the problems of the main characters and reflects their cunning and ability to deceive.\nAdditionally, poker in film and literature is often used to create atmosphere and setting. It can be presented as luxurious and elegant a game that attracts rich and successful people, or as a dangerous and underground activity associated with crime and the mafia.\nIn conclusion, poker in film and literature plays an important role in creating interesting and exciting stories. It is used to display characters\' personalities, create tense situations, and establish atmosphere. Poker has become an integral part of culture and art, and its presence in film and literature will continue to inspire and entertain audiences and readers.';

const article_11 =
    'Poker is a game that has traditionally been considered a man\'s activity. However, over time, women are becoming more and more interested in this game and are actively participating in poker tournaments.\nHowever, women in poker face some characteristics and stereotypes that affect their participation\nand success in this game.\nFirstly, women in poker often face prejudice and doubts about their abilities. Many people still\nbelieve that poker is a man\'s game and that women do not have the skill and strategic thinking to play successfully. These stereotypes can create putting additional pressure on women and limiting their opportunities in poker. However, many women prove the opposite. They actively learn and develop their poker skills, and many of them achieve significant success. Some women become professional players and participate in major tournaments, where they compete with men on equal terms. This shows that women are fully capable of being successful in poker if they are given the opportunity to develop and show their potential.\nAdditionally, women in poker can use their unique qualities and strategies to win. They may be more patient and thoughtful in their decisions, and also use intuition and emotional understanding of their opponents. These features can be an advantage for women in poker and help them achieve success.\nIn conclusion, women in poker face several characteristics and stereotypes that affect their participation and success in this game. However, many women are proving their ability to be successful in poker and achieve significant results. Women can use their unique qualities and strategies to win this game. It is important to continue to support and inspire women in poker so that they can develop and achieve their goals.';

const article_12 =
    'Gambling addiction is a serious problem that can arise from any form of gambling, including poker. Poker, being one of the most popular gambling games, is no exception. Gambling addiction is a pathological condition in which a person loses control over his gambling and becomes unreasonable in his actions. He/she becomes more and more interested in the game, spends more and more time and money on it, and the game becomes the center of their life. This can lead to financial problems, broken relationships, and social isolation.\nThe social aspect of poker can also create some problems. Firstly, poker is often associated with excitement and negative stereotypes. This can lead to judgment and social isolation for those who play poker. People may be inclined to think of poker as a game for "losers" and "dishonest" people. In addition, poker can become a source of conflict in relationships. If one partner plays poker and the other doesn\'t, it can cause mistrust and jealousy. Financial problems associated with playing poker can also create tension and conflict within family or friends.\nHowever, it should be noted that not all poker players suffer from gambling addiction or experience social problems. Many people play poker for fun and manage to maintain a balance between the game and other aspects of their lives. They play responsibly and are in control of their finances.\nIn conclusion, gambling addiction and social problems are serious aspects of poker. However, not all players face these problems. It is important to be an aware and responsible player to avoid gambling addiction and minimize possible social problems, poker-related.';

const article_13 =
    'Online poker is a form of poker that is played over the Internet. Online poker has become popular in recent decades and has had a significant impact on the gaming industry.\nFirstly, online poker gives you the opportunity to play anytime, anywhere. Players no longer need to travel to a casino or organize home games to play poker. They can simply go to an online poker site and start playing. This makes poker more accessible to everyone, which leads to an increase in the number of players.\nSecondly, online poker offers a wide range of gaming options. There are many different types of poker that can be played online, including traditional variants such as Texas Hold\'em and Omaha, as well as more exotic options. This allows players to choose the game that best suits their preferences.\nAdditionally, online poker offers the opportunity to play at different bet levels. Players can start with low stakes and gradually move up to higher stakes as their skills improve. This makes poker more accessible for beginners and allows them to develop in the game.\nOnline poker also has a significant impact on the economics of the gaming industry. It creates new jobs for software developers, website designers, and helpdesk. In addition, online poker sites generate significant revenue from commissions charged per hand or tournament. This contributes to the growth and prosperity of the game industry.\nHowever, online poker also has its disadvantages. Uncontrolled gaming can lead to gambling addiction and financial problems. Additionally, there is a risk of fraud and unfair practices from some online poker sites.\nIn conclusion, online poker has a significant impact on the gaming industry. It makes poker more accessible, offers more play options, and creates new opportunities for players and the gaming industry\'s economy.\nHowever, it is necessary to be a careful and responsible player to avoid possible negative consequences.';

const article_14 =
    'Poker tournaments and the World Series of Poker are some of the most prestigious and exciting events in the world of poker. They collect the best players from all over the world to compete for big prizes and the title of champion.\nPoker tournaments offer players the opportunity to show off their skills and strategies in the game. Participants must demonstrate not only mathematical and strategic thinking but also the ability to read opponents and make quick decisions. Tournaments offer a variety of game formats such as No Limit Hold\'em, Omaha, and others, allowing players to choose the one that suits them best.\nThe World Series of Poker (WSOP) is the most prestigious event in poker, which takes place annually in Las Vegas. The WSOP offers a wide variety of tournaments with varying stakes levels and game formats. The main event is the World Series of Poker Main Event, where players compete for the top prize and the title of World Champion.\nPoker tournaments and the World Series of Poker have a major impact on the poker industry. They attract the attention of millions of poker fans from all over the world and contribute to its popularization. These events also create new opportunities for sponsors, television broadcasts, and other poker-related commercial ventures.\nHowever, poker tournaments and the World Series of Poker also have their downsides. High stakes and intense competition can create pressure and stress for players. In addition, there is a risk of developing gambling addiction and financial problems for some participants.\nIn conclusion, poker tournaments and the World Series of Poker are exciting events that attract the best poker players from around the world. They contribute to the development of the poker industry and the popularization of the game. However, it is necessary to remember the possible negative consequences and be a responsible player.';

const article_15 =
    'Poker streams and game commentary are popular and in-demand content in the poker industry. They provide spectators with the opportunity to watch professional players play, learn from them, and gain fun from the process.\nPoker streams allow viewers to immerse themselves in the world of poker without leaving home. They offer the opportunity to watch the game in real-time, see players\' cards, and hear their comments and thoughts. This helps viewers better understand the strategies and tactics of the game, as well as improve their own skills.\nGame commentary is an integral part of poker streams. Commentators are usually experienced players or poker experts who share their knowledge and analyze the game. They help viewers better understand the decisions being made, game strategies, and tactics of opponents.\nPoker streaming and game commentary have several benefits. First, they allow poker newbies to learn from the pros and develop their skills. Second, they provide entertainment and engaging content for viewers. Third, they help popularize poker and attract new fans of the game.\nHowever, poker streaming and game commentary also have their limitations and disadvantages. Viewers may find that not all streamers and commentators are professional players or poker experts. It may lead to misunderstandings of the game and incorrect advice.\nIn conclusion, poker streams and game commentary are popular and interesting content in the poker industry. They provide spectators with the opportunity to watch professional players play, learn from them, and get entertainment. However, you need to be careful and analytical when viewing streams and comments to avoid incorrect understanding of the game.';

const article_16 = """

Poker training and game training are important aspects for developing and improving your
poker skills. They allow players to learn strategies, tactics and analyze their game to achieve
better results.
One of the main ways to practice poker is to play for money or with fictitious chips. This
allows players to hone their skills, try out different strategies and tactics, and study their
opponents' reactions. It is important to analyze the hands you play to identify mistakes
and improve your play in the future.
Another way to train is to take part in poker training courses or seminars. This allows players
to gain knowledge from seasoned professionals, learn various strategies
and tactics, and learn about the latest trends in poker. Such training helps players
develop their skills and improve their level of play.
There are also various online resources that offer poker training. These could be video
tutorials, strategy articles, forums and communities where players can share experiences
and ask questions. These resources provide players with access to valuable
information and help them improve your skills.
Poker training and learning to play have several benefits. First, they help players develop
their skills and improve their level of play. In-
Secondly, they allow players to learn different strategies and tactics, which helps
them make more informed decisions in the game. Third, they help players analyze
their performance and identify mistakes to improve their performance in the future.
However, training and studying poker also has its limitations. Some players may
find that training takes time and effort, and can also be costly. Additionally, not all
training and education can be suitable for all players, as each has its own unique
playing style and preferences.
In conclusion, poker training and game training are important aspects for developing and
improving poker skills. They help players learn strategies, tactics and analyze their game to achieve better
results. However, it is necessary to take into account the limitations and choose training that is most
suitable for a particular player.
 """;

const article_17 = """ 

Poker geniuses and legends of the game are players who are distinguished by outstanding skills, strategic
thinking and a unique playing style. They
become a source of inspiration and admiration for many poker fans
Worldwide.
One of the most famous poker geniuses is Stiff Miller. He was one of the first players to apply a
mathematical approach to the game of poker. Miller developed a strategy based on probability and
statistics, which allowed him to achieve high results in tournaments.
Another legendary player is Phil Ivey. He is known for his aggressive playing style and ability to
read opponents. Ivey is a master at using bluffs and deceptions to win large sums of money in poker. He
also has ten WSOP bracelets, making him one of the
the most successful players in poker history.
Other poker geniuses and legends include Daniel Negreanu, Phil Hellmuth and Doyle Brunson. Each of them
has their own unique playing style and have achieved outstanding results in poker. They have become
a role model for many players and inspire them to achieve success in this game.
However, poker geniuses and legends of the game are not only distinguished by their skills, but also have
special qualities. They have confidence
decisiveness and ability to make difficult decisions in critical situations. They also have the ability
to control their emotions and remain calm even in the most stressful moments of the game.
Poker geniuses and legends of the game not only achieved outstanding results in poker, but also had a
significant influence on the development of this game. Their
Innovative strategies and approaches to the game have helped change the face of poker and influenced
the development of new generations of players.
In conclusion, poker geniuses and legends of the game are a source of inspiration and admiration for many
poker fans. Their outstanding skills, strategic thinking and unique playing style make them
unrivaled in this game. They not only achieved high results, but also provided
significant influence on the development of poker.
""";

const article_18 = """
Poker communities and forums play an important role in poker, providing players with the opportunity to
communicate, share experiences and learn from each other. These platforms create a space where poker
enthusiasts can discuss
strategies, analyze hands, share tips and ask questions.
One of the main benefits of poker communities and forums is access to a huge amount of information and
knowledge. Players can find answers to their
questions, get advice from experienced players and learn about the latest trends and news in the world of
poker. This helps them develop and improve their skills in
game.
Moreover, poker communities and forums offer the opportunity to communicate with players from all over
the world. This allows players to expand their horizons, learn about different play styles and strategies, and
exchange experiences with players of different levels. Such communication contributes to the
development of the poker community as a whole and creates an atmosphere of cooperation and mutual
assistance.
In addition, poker communities and forums offer the opportunity to participate in the discussion of current
topics and problems related to poker. Players can express their opinions, share their thoughts and
contribute to the development of the poker industry. Such discussions can lead to new ideas and
innovation in the game.
However, like any community, poker forums can also have their downsides. Some players may use
these platforms to spread false or incorrect information, as well as promoting their own interests. Therefore, it is important to be critical and check information obtained on
forums before trusting it.
In conclusion, poker communities and forums are a valuable resource for poker players. They offer
opportunities to network, share experiences and learn, and contribute to the development of the poker
community as a whole. However, one must be careful and critical about the information obtained on these
platforms.
 """;

const article_19 = """ 
The financial aspects of poker and bankroll management are key elements to playing successfully.
Poker is a game where players risk their money, so proper bankroll management is essential
part of the game strategy.
Bankroll management means wisely allocating the amount of money you are willing to spend on the
game. The main goal of bankroll management is to minimize risks and increase the chances of
success. It is important to determine your financial ability and create a plan that will allow you to play
poker without serious financial losses.
The first step in bankroll management is to determine the size of your bankroll. This should be an amount of
money that you are willing to spend on poker and that you can afford to lose without harming your financial
stability. It is recommended to have a bankroll large enough to
deal with variations and not end up broke after a few bad games.
The second step is to determine the size of the bets you will place. It is important to choose bets that suit
your bankroll and your skills. You should not play at stakes that are too high for your bankroll, as
this can lead to your bankroll being depleted quickly. It is recommended to choose bets where you
can afford to lose no more than 5% of your bankroll in one game.
The third step is to monitor your bankroll and take action accordingly. If your bankroll is down to a certain
level, you might want to reduce bets or temporarily stop playing. This will help you maintain your bankroll and avoid big losses.
It is also important to be disciplined and not be tempted to take more risks than you can afford.
The game of poker is a game of
money, and it is important to have control over your emotions and take rational
solutions.
In conclusion, financial aspects of poker and bankroll management play an important role in playing
successfully. Proper bankroll management helps minimize risks and increase the chances of success.
Determining your bankroll size, choosing appropriate bets, and being disciplined are key elements
in bankroll management.
""";

const article_20 = """ 
Poker is a game in which players make decisions based on probabilities and statistics. Calculating your
odds of winning is an important aspect of successful
poker games.
In poker, each hand has its own probability of winning. To determine his chances of success, a player must
consider several factors. The first is the number of cards that can help improve your hand. For example,
if you have two cards of the same suit and there are already two cards of that suit on the table, then you have
9 cards that can help you get a flush.
Secondly, it is necessary to take into account the number of opponents and their actions. If
other players bet or raise, this may indicate that they have
there are strong hands that affect your chances of success.
The third factor is the size of the pot and the size of the bets. The larger the pot, the more you can win, but
the risk of loss also increases. It is important to consider your
odds of winning and decide whether to continue playing or fold.
You can use math and statistics to calculate your chances of winning. There are various methods such as
the 4-2 rule, which allow you to approximately determine the probability of winning in
depending on your cards and the situation on the table.
However, it is important to understand that poker is a game of chance, and even with high odds of success,
you can still lose. Therefore, it is important to make rational decisions based on probabilities and statistics,
but also consider factors
such as player psychology and your intuition.
In conclusion, poker and probability are closely related to each other. Calculating your odds of winning
is an important aspect of playing poker successfully. Taking into account the number of cards, the actions of
opponents and the size of the bets, the player can approximately determine his chances
of success. However, it is important to remember that poker is a game of chance and rational decisions
do not always guarantee victory.
""";

const allQuestions = [
  questions_1,
  questions_2,
  questions_3,
  questions_4,
  questions_5,
  questions_6,
  questions_7,
  questions_8,
  questions_9,
  questions_10,
  questions_11,
  questions_12,
  questions_13,
  questions_14,
  questions_15,
  questions_16,
  questions_17,
  questions_18,
  questions_19,
  questions_20,
];

const questions_1 = [
  {
    "question": "Which country is considered the birthplace of poker?",
    "options": ["USA", "France", "Italy", "China"],
    "answer": 0
  },
  {
    "question": "In what year was the first online poker room created?",
    "options": ["1995", "2001", "1998", "2005"],
    "answer": 0
  },
  {
    "question": "Which of the following hands is the strongest in poker?",
    "options": ["Royal flush", "Square", "Full house", "Street"],
    "answer": 0
  },
  {
    "question": "What type of poker is the most common?",
    "options": ["Texas Hold'em", "Omaha", "Stud", "Draw poker"],
    "answer": 0
  },
  {
    "question":
        "Who is the most successful player in poker history in terms of tournament winnings?",
    "options": ["Daniel Negreanu", "Phil Ivey", "Doyle Brunson", "Brian Rust"],
    "answer": 0
  }
];

const questions_2 = [
  {
    "question":
        "What type of poker is played with 5 cards where players make bets based on their hands?",
    "options": ["Texas Hold'em", "Omaha", "Stud", "Draw poker"],
    "answer": 2
  },
  {
    "question":
        "In what form of poker do players receive 4 hole cards and must use 2 of them along with the 3 community cards on the table?",
    "options": ["Texas Hold'em", "Omaha", "Stud", "Draw poker"],
    "answer": 1
  },
  {
    "question":
        "In which form of poker do players only receive 2 hole cards and must use 5 community cards on the table?",
    "options": ["Texas Hold'em", "Omaha", "Stud", "Draw poker"],
    "answer": 0
  },
  {
    "question":
        "What type of poker is played with 3 cards where players place bets based on their hands?",
    "options": ["Texas Hold'em", "Omaha", "Stud", "Draw poker"],
    "answer": 3
  },
  {
    "question":
        "In what form of poker do players receive 2 hole cards and must use 3 community cards on the table?",
    "options": ["Texas Hold'em", "Omaha", "Stud", "Draw poker"],
    "answer": 0
  }
];

const questions_3 = [
  {
    "question":
        "Which of the following statements is correct in the context of poker psychology?",
    "options": [
      "Psychology has no role in poker",
      "Psychology can help a player make better decisions during the game",
      "Psychology only prevents the player from concentrating on the game",
      "Psychology only affects novice players"
    ],
    "answer": 1
  },
  {
    "question":
        "Which of the following statements is correct in the context of poker psychology?",
    "options": [
      "There is no room for emotions in poker",
      "Emotions can help a player read his opponents",
      "Emotions only prevent the player from concentrating on the game",
      "Emotions do not affect the results of the game"
    ],
    "answer": 1
  },
  {
    "question":
        "Which of the following statements is correct in the context of poker psychology?",
    "options": [
      "The best players always remain calm and unperturbed",
      "Stress and pressure can affect the performance of even the best players",
      "Feelings and emotions don't matter in poker",
      "Psychology does not affect the results of the game"
    ],
    "answer": 1
  },
  {
    "question":
        "Which of the following statements is correct in the context of poker psychology?",
    "options": [
      "Psychological tricks don't matter in poker",
      "Psychological tricks can help a player improve his game",
      "Psychological tricks only prevent the player from concentrating on the game",
      "Psychological tricks cannot influence the results of the game"
    ],
    "answer": 1
  },
  {
    "question":
        "Which of the following statements is correct in the context of poker psychology?",
    "options": [
      "Psychological aspects are not important when analyzing the opponents' performance",
      "Analysis of psychological aspects can help the player make better decisions",
      "Analyzing psychological aspects only prevents the player from focusing on the game",
      "Psychological aspects do not affect the results of the game"
    ],
    "answer": 1
  }
];

// 4
const questions_4 = [
  {
    "question":
        "Which of the following statements is correct in the context of mathematics and statistics in poker?",
    "options": [
      "Mathematics and statistics have no role in poker",
      "Mathematics and statistics can help a player make more informed decisions during the game",
      "Mathematics and statistics only prevent the player from concentrating on the game",
      "Mathematics and statistics only affect novice players"
    ],
    "answer": 1
  },
  {
    "question":
        "Which of the following mathematical concepts is used in poker to estimate probabilities?",
    "options": ["Limit", "Integral", "Derivative", "Chance"],
    "answer": 3
  },
  {
    "question":
        "Which of the following statements is correct in the context of mathematics and statistics in poker?",
    "options": [
      "Probabilities don't matter in poker",
      "Knowing the probabilities can help a player make better decisions",
      "Knowing the probabilities only prevents the player from concentrating on the game",
      "Probabilities do not affect the outcome of the game"
    ],
    "answer": 1
  },
  {
    "question":
        "Which of the following statistical concepts is used in poker to analyze the performance of opponents?",
    "options": ["Average value", "Variance", "Correlation", "Median"],
    "answer": 2
  },
  {
    "question":
        "Which of the following statements is correct in the context of mathematics and statistics in poker?",
    "options": [
      "Mathematical and statistical aspects are not important when analyzing opponents",
      "Analysis of mathematical and statistical aspects can help the player make more informed decisions",
      "Analyzing mathematical and statistical aspects only hinders the player focus on the game",
      "Mathematical and statistical aspects do not influence the results of the game"
    ],
    "answer": 1
  }
];

//5
const questions_5 = [
  {
    "question":
        "What poker strategy is based on aggressive betting and bluffing?",
    "options": [
      "Tight-aggressive strategy",
      "Passive strategy",
      "Conservative strategy",
      "Bluffing strategy"
    ],
    "answer": 3
  },
  {
    "question":
        "What poker strategy is based on waiting for strong card combinations?",
    "options": [
      "Aggressive strategy",
      "Passive strategy",
      "Tight-aggressive strategy",
      "Loose strategy"
    ],
    "answer": 2
  },
  {
    "question":
        "What poker strategy is based on frequent bets and participation in many hands?",
    "options": [
      "Aggressive strategy",
      "Passive strategy",
      "Loose strategy",
      "Conservative strategy"
    ],
    "answer": 2
  },
  {
    "question":
        "What poker strategy is based on careful bets and participating only in strong hands?",
    "options": [
      "Aggressive strategy",
      "Passive strategy",
      "Conservative strategy",
      "Loose strategy"
    ],
    "answer": 2
  },
  {
    "question":
        "What poker strategy is based on passive bets and waiting for strong card combinations?",
    "options": [
      "Aggressive strategy",
      "Passive strategy",
      "Tight-aggressive strategy",
      "Loose strategy"
    ],
    "answer": 1
  }
];

//6
const questions_6 = [
  {
    "question":
        "Which of the following actions may indicate an opponent is bluffing in poker?",
    "options": [
      "He makes a big bet immediately after the cards have been dealt.",
      "He makes his bet slowly and absentmindedly.",
      "He folds immediately after your bet.",
      "He looks at you with a confident and challenging look."
    ],
    "answer": 0
  },
  {
    "question":
        "Which of the following behaviors might indicate a strong hand in poker?",
    "options": [
      "He makes a small bet, but with a confident gesture.",
      "He starts making noise and talking loudly to distract you.",
      "He looks at his cards slowly and carefully before making a bet.",
      "He bets big, but his hands are shaking."
    ],
    "answer": 2
  },
  {
    "question":
        "Which of the following behaviors might indicate an opponent is bluffing in poker?",
    "options": [
      "He makes a big bet, but his eyes look down.",
      "He folds immediately after your bet.",
      "He makes his bet slowly and carefully, looking you straight in the eyes.",
      "He starts talking and laughing to distract you."
    ],
    "answer": 2
  },
  {
    "question":
        "Which of the following behaviors might indicate a strong hand in poker?",
    "options": [
      "He makes a big bet, but his hands are shaking.",
      "He folds immediately after your bet.",
      "He makes a small bet, but with a confident and challenging look.",
      "He starts making noise and talking loudly to distract you."
    ],
    "answer": 2
  },
  {
    "question":
        "Which of the following behaviors might indicate an opponent is bluffing in poker?",
    "options": [
      "He makes a small bet, but with a confident gesture.",
      "He starts making noise and talking loudly to distract you.",
      "He looks at his cards slowly and carefully before making a bet.",
      "He makes a big bet, but his eyes look down."
    ],
    "answer": 1
  }
];

//7
const questions_7 = [
  {
    "question":
        "Which of the following games is the most popular form of poker?",
    "options": ["Texas Hold'em", "Omaha", "Stud", "Russian poker"],
    "answer": 0
  },
  {
    "question":
        "Which of the following statements refers to the impact of poker on society?",
    "options": [
      "Poker promotes the development of analytical thinking and rational decision making.",
      "Poker leads to social isolation and deterioration of interpersonal relationships.",
      "Poker contributes to the development of gambling and gambling addiction.",
      "Poker is a source of financial loss and bankruptcy."
    ],
    "answer": 0
  },
  {
    "question":
        "Which of the following countries is the center of the world for poker?",
    "options": ["USA", "Great Britain", "China", "Russia"],
    "answer": 0
  },
  {
    "question":
        "Which of the following statements refers to the influence of poker on culture?",
    "options": [
      "Poker has become a popular motif in literature and cinema.",
      "Poker leads to the decline of traditional card games.",
      "Poker contributes to the development of drug addiction and alcoholism.",
      "Poker is a source of conflict and violence."
    ],
    "answer": 0
  },
  {
    "question":
        "Which of the following statements refers to the impact of poker on the economy?",
    "options": [
      "Poker contributes to the development of tourism and the hotel industry.",
      "Poker leads to economic losses and financial crises.",
      "Poker contributes to the development of illegal gambling and organized crime.",
      "Poker is a source of unemployment and social inequality."
    ],
    "answer": 0
  }
];

//8
const questions_8 = [
  {
    "question":
        "Which of the following statements is most consistent with ethics and morality in poker?",
    "options": [
      "Use of deception and manipulation to achieve winnings.",
      "Compliance with the rules and ethics of the game, as well as respect for opponents.",
      "Using physical force and threats to protect one's interests.",
      "Playing on emotions and manipulating the feelings of other players."
    ],
    "answer": 1
  },
  {
    "question":
        "Which of the following actions is a violation of ethics and morality in poker?",
    "options": [
      "Bluffing and creating the illusion of a strong hand.",
      "The desire to maximize one's own benefits without taking into account the interests of other players.",
      "Aggressive behavior and insults towards opponents.",
      "Admitting your mistakes and losses."
    ],
    "answer": 2
  },
  {
    "question":
        "Which of the following statements is most consistent with ethics and morality in poker?",
    "options": [
      "Use of prohibited means and devices to obtain advantages.",
      "Fair play without the use of prohibited methods and means.",
      "Conspiracy and cooperation with other players to deceive other participants.",
      "Using information about opponents obtained through illegal means."
    ],
    "answer": 1
  },
  {
    "question":
        "Which of the following actions is a violation of ethics and morality in poker?",
    "options": [
      "The ability to control your emotions and not give away information about your hand.",
      "Bribing referees or other players to gain an advantage.",
      "Refusal to play under unfavorable conditions or a weak hand.",
      "Respecting the rules and decisions of the judges, even if they are not in your favor."
    ],
    "answer": 1
  },
  {
    "question":
        "Which of the following statements is most consistent with ethics and morality in poker?",
    "options": [
      "The desire for maximum winnings and overcoming opponents by any means.",
      "Compliance with the principles of fair play and respect for the rules and opponents.",
      "Using physical force and threats to protect one's interests.",
      "Playing on emotions and manipulating the feelings of other players."
    ],
    "answer": 1
  }
];

//9
const questions_9 = [
  {
    "question":
        "What is the official recognition of poker as a sporting discipline?",
    "options": [
      "Poker is not recognized as a sport.",
      "Poker is recognized as a sport only in some countries.",
      "Poker is recognized as a sport internationally.",
      "Poker is recognized as a sport only in the online format."
    ],
    "answer": 2
  },
  {
    "question": "What skills are needed to play poker successfully?",
    "options": [
      "Physical strength and endurance.",
      "Intelligence, analytical thinking and psychological stability.",
      "Quick reaction and coordination of movements.",
      "Flexibility and acrobatic skills."
    ],
    "answer": 1
  },
  {
    "question": "What tournaments are held in poker as a sporting discipline?",
    "options": [
      "Online tournaments only.",
      "Casino tournaments only.",
      "Only professional level tournaments.",
      "Online tournaments, casino tournaments and professional level tournaments."
    ],
    "answer": 3
  },
  {
    "question":
        "What organizations are involved in the regulation and development of poker as a sport?",
    "options": [
      "International Federation of Poker (IFP).",
      "International Olympic Committee (IOC).",
      "International Mental Sports Federation (IMSA).",
      "All of the above organizations."
    ],
    "answer": 3
  },
  {
    "question":
        "What advantages does poker as a sport have over other sports disciplines?",
    "options": [
      "No physical activity, only intellectual.",
      "More opportunities for income and fame.",
      "More accessible and can be played anywhere.",
      "All of the above benefits."
    ],
    "answer": 3
  }
];

//10
const questions_10 = [
  {
    "question":
        "In which movie does the main character play poker and use his skills to deceive his opponents?",
    "options": [
      "Matrix",
      "The Avengers",
      "Casino Royale",
      "The Hobbit: An Unexpected Journey"
    ],
    "answer": 2
  },
  {
    "question": "Which book is a poker classic?",
    "options": [
      "Harry Potter and the Philosopher's Stone",
      "The Great Gatsby",
      "The Master and Margarita",
      "Poker for Beginners"
    ],
    "answer": 3
  },
  {
    "question":
        "In what movie does the main character play poker and risk everything to save his family?",
    "options": [
      "Mad Max: Fury Road",
      "Once Upon a Time in Hollywood",
      "Start",
      "Seven Lives"
    ],
    "answer": 3
  },
  {
    "question":
        "Which character from the famous book “Alice in Wonderland” plays poker?",
    "options": ["Cheshire cat", "White rabbit", "Queen Heart", "Hatter"],
    "answer": 2
  },
  {
    "question":
        "In which movie does the main character use his poker skills to expose cheaters?",
    "options": [
      "Once Upon a Time in America",
      "Game of Thrones",
      "Very Bad Guys",
      "21"
    ],
    "answer": 3
  }
];

//11
const questions_11 = [
  {
    "question":
        "Which of the following women is a famous professional poker player?",
    "options": [
      "Marilyn Monroe",
      "Rihanna",
      "Victoria Koren",
      "Angelina Jolie"
    ],
    "answer": 2
  },
  {
    "question":
        "Which of the following women has won the most money in the history of women's poker?",
    "options": [
      "Jennifer Lopez",
      "Liv Tyler",
      "Vanessa Selbst",
      "Kim Kardashian"
    ],
    "answer": 2
  },
  {
    "question":
        "Which of the following women was the first woman to win a World Series of Poker Main Event?",
    "options": [
      "Charlize Theron",
      "Linda Johnson",
      "Emma Stone",
      "Julia Roberts"
    ],
    "answer": 1
  },
  {
    "question":
        "Which of the following statements about women in poker is correct?",
    "options": [
      "Women rarely play poker",
      "Women cannot be professional poker players",
      "Women have the same chance of success in poker as men",
      "Women are not capable of cheating in poker"
    ],
    "answer": 2
  },
  {
    "question":
        "Which of the following women became the first female professional poker player?",
    "options": [
      "Elizabeth Taylor",
      "Louise Mayer",
      "Barbara Eddy",
      "Barbara Ann Scott"
    ],
    "answer": 3
  }
];

//12
const questions_12 = [
  {
    "question":
        "Which of the following factors may indicate a gambling addiction?",
    "options": [
      "Constant desire to play poker",
      "Inability to manage your finances",
      "Playing poker only on weekends",
      "Playing poker with friends"
    ],
    "answer": 0
  },
  {
    "question":
        "Which of the following problems with the social aspect of poker may arise?",
    "options": [
      "Alienation from family and friends",
      "Losing a job due to excessive poker playing",
      "Improving communication and social adaptation skills",
      "Increased self-esteem and self-confidence"
    ],
    "answer": 1
  },
  {
    "question":
        "Which of the following strategies can help prevent gambling addiction?",
    "options": [
      "Setting limits on the time and money that can be spent on the game",
      "Play poker every day to develop skills",
      "Play poker only with friends and family",
      "Play poker only at high stakes for more adrenaline"
    ],
    "answer": 0
  },
  {
    "question":
        "Which of the following factors may contribute to the development of problems with the social aspect of poker?",
    "options": [
      "Playing poker alone, without communicating with other players",
      "Constant need to win and defeat other players",
      "Participation in tournaments and competitions to improve your ranking",
      "Regular communication with other players about game strategies and tactics"
    ],
    "answer": 1
  },
  {
    "question":
        "Which of the following precautions can be taken to avoid problems with the social aspect of poker?",
    "options": [
      "Regular breaks from gaming and other hobbies",
      "Communication with other players to exchange experiences and tips",
      "Participation in poker clubs and organizations to expand your social circle",
      "Play poker only with money you can afford to lose"
    ],
    "answer": 3
  }
];

//13
const questions_13 = [
  {
    "question":
        "Which of the following factors is an advantage of online poker over traditional poker games?",
    "options": [
      "Large selection of poker options",
      "The ability to communicate with other players in real time",
      "Ability to use poker programs and statistics to analyze the game",
      "Big money wins"
    ],
    "answer": 2
  },
  {
    "question":
        "Which of the following factors can be a negative effect of online poker?",
    "options": [
      "Possibility of playing for real money without restrictions",
      "The risk of losing confidential information when registering on poker sites",
      "Lack of opportunity to play with real opponents",
      "Limited selection of poker options"
    ],
    "answer": 1
  },
  {
    "question":
        "Which of the following factors may be contributing to the rise in popularity of online poker?",
    "options": [
      "Widespread access to the Internet and mobile devices",
      "Possibility to play anytime and anywhere",
      "Attractive bonuses and promotions from poker sites",
      "Limited selection of poker options"
    ],
    "answer": 2
  },
  {
    "question":
        "Which of the following factors may be responsible for the decline in popularity of traditional poker games?",
    "options": [
      "Limited selection of gaming options",
      "High stakes and risks of losing large sums of money",
      "The need to visit casinos or poker clubs to play",
      "Lack of ability to communicate with other players in real time"
    ],
    "answer": 3
  },
  {
    "question":
        "Which of the following factors may be contributing to the rise in popularity of online poker among new players?",
    "options": [
      "The ability to play with virtual chips without the risk of losing real money",
      "Low stakes and the ability to play for small amounts of money",
      "Opportunity to learn and develop gaming skills using free training modes",
      "Limited selection of poker options"
    ],
    "answer": 1
  }
];

//14
const questions_14 = [
  {
    "question": "What is the most prestigious event in the poker world?",
    "options": [
      "World Series of Poker (WSOP)",
      "European Poker Tour (EPT)",
      "World Poker Tour (WPT)",
      "Asian Poker Tour (APT)"
    ],
    "answer": 0
  },
  {
    "question": "Which of the following events is part of the WSOP?",
    "options": [
      "Main Event",
      "Super High Roller Bowl",
      "EPT Barcelona",
      "WPT Championship"
    ],
    "answer": 0
  },
  {
    "question": "How many players usually participate in the WSOP Main Event?",
    "options": [
      "About 100 players",
      "About 500 players",
      "About 1,000 players",
      "About 10,000 players"
    ],
    "answer": 3
  },
  {
    "question":
        "Which country is the most successful at the WSOP in terms of the number of bracelets won?",
    "options": ["USA", "Canada", "Great Britain", "Russia"],
    "answer": 0
  },
  {
    "question":
        "Which professional player holds the record for most WSOP bracelets won?",
    "options": [
      "Phil Hellmuth",
      "Daniel Negreanu",
      "Phil Ivey",
      "Doyle Brunson"
    ],
    "answer": 0
  }
];

//15
const questions_15 = [
  {
    "question": "Which of the following players is a popular poker streamer?",
    "options": ["Tom Dwan", "Phil Ivey", "Lex Veldhuis", "Daniel Negreanu"],
    "answer": 2
  },
  {
    "question":
        "Which of the following streaming platforms is most commonly used to stream poker?",
    "options": ["Twitch", "YouTube", "Facebook Live", "Mixer"],
    "answer": 0
  },
  {
    "question": "Which of the following commentators is a famous poker expert?",
    "options": ["Joe Rogan", "Mike Sexton", "Joe Stapleton", "Jim Nantz"],
    "answer": 1
  },
  {
    "question":
        "Which of the following terms is used to describe a comment when a player bets big but does not have a strong hand?",
    "options": ["Bluff", "Value bet", "Slowplay", "Check-raise"],
    "answer": 0
  },
  {
    "question":
        "Which of the following poker games is most frequently commented on stream?",
    "options": [
      "Texas Hold'em",
      "Omaha",
      "Stud",
      "Different variants of poker"
    ],
    "answer": 0
  }
];

//16
const questions_16 = [
  {
    "question": "Which of the following is an effective way to practice poker?",
    "options": [
      "Play for money in online casinos",
      "Reading books about poker",
      "Watching poker streams",
      "Playing with friends in the kitchen"
    ],
    "answer": 1
  },
  {
    "question":
        "Which of the following skills is important for playing poker successfully?",
    "options": [
      "The ability to read the minds of your opponents",
      "Luck",
      "Knowledge of mathematics and statistics",
      "Fast reflexes"
    ],
    "answer": 2
  },
  {
    "question": "Which of the following factors could affect your poker play?",
    "options": [
      "Emotional state",
      "Moon phase",
      "The color of your shirt",
      "Your bet size"
    ],
    "answer": 0
  },
  {
    "question":
        "Which of the following ways to teach poker is the most interactive?",
    "options": [
      "Reading books",
      "Watching video tutorials",
      "Participation in training sessions with professionals",
      "Play for money in online casinos"
    ],
    "answer": 2
  },
  {
    "question":
        "Which of the following poker formats is the most difficult to play?",
    "options": [
      "Texas Hold'em",
      "Omaha",
      "Stud",
      "Different variants of poker"
    ],
    "answer": 1
  }
];

//17
const questions_17 = [
  {
    "question": "What name is associated with the concept of 'Poker Brain'?",
    "options": [
      "Daniel Negreanu",
      "Phil Ivey",
      "Phil Hellmuth",
      "Doyle Brunson"
    ],
    "answer": 0
  },
  {
    "question": "Which of the following players has the most WSOP bracelets?",
    "options": [
      "Phil Ivey",
      "Doyle Brunson",
      "Phil Hellmuth",
      "Daniel Negreanu"
    ],
    "answer": 2
  },
  {
    "question":
        "Which of the following players is known for their aggressive playing style and nickname 'Tiger'?",
    "options": ["Phil Ivey", "Doyle Brunson", "Phil Hellmuth", "Tom Duan"],
    "answer": 0
  },
  {
    "question":
        "Which of the following players is the author of the book 'Super System'?",
    "options": [
      "Phil Ivey",
      "Doyle Brunson",
      "Phil Hellmuth",
      "Daniel Negreanu"
    ],
    "answer": 1
  },
  {
    "question":
        "Which of the following players was the first WSOP Main Event winner?",
    "options": ["Phil Ivey", "Doyle Brunson", "Phil Hellmuth", "Johnny Moss"],
    "answer": 3
  }
];

//18
const questions_18 = [
  {
    "question":
        "Which of the following forums is one of the most popular poker communities in the world?",
    "options": ["Reddit", "2+2", "PokerStars Blog", "CardsChat"],
    "answer": 1
  },
  {
    "question":
        "Which of the following poker communities specializes in discussing game strategies and tactics?",
    "options": ["PokerStrategy", "PocketFives", "FlopTurnRiver", "PokerNews"],
    "answer": 0
  },
  {
    "question":
        "Which of the following forums is one of the oldest and most famous?",
    "options": ["TwoPlusTwo", "PocketFives", "CardsChat", "WPT Forum"],
    "answer": 0
  },
  {
    "question":
        "Which of the following forums is the official forum of the World Poker Tour?",
    "options": ["PokerStrategy", "PocketFives", "2+2", "FlopTurnRiver"],
    "answer": 2
  },
  {
    "question":
        "Which of the following poker room forums is the official forum of the largest online poker room PokerStars?",
    "options": ["Reddit", "2+2", "CardsChat", "PokerStars Forum"],
    "answer": 3
  }
];

//19
const questions_19 = [
  {
    "question":
        "Which of the following factors is most important when managing a poker bankroll?",
    "options": [
      "Initial deposit amount",
      "Bankroll growth rate",
      "Results of recent games",
      "Number of players at the table"
    ],
    "answer": 1
  },
  {
    "question": "What does the term “bankroll” mean in poker?",
    "options": [
      "The amount of money a player is willing to spend on poker",
      "The amount of money a player has won over a certain period of time",
      "The amount of money that the player has in his gaming account",
      "The amount of money the player spent on the purchase of poker books and programs"
    ],
    "answer": 2
  },
  {
    "question":
        "Which of the following principles is fundamental to bankroll management in poker?",
    "options": [
      "Play at stakes that are as close as possible to your bankroll",
      "Play at stakes that provide maximum profit",
      "Play at stakes that minimize the risk of losing your entire bankroll",
      "Play at stakes that allow you to quickly double your bankroll"
    ],
    "answer": 2
  },
  {
    "question":
        "What percentage of your bankroll is recommended to use when playing at certain stakes tables?",
    "options": ["10-20%", "30-40%", "50-60%", "70-80%"],
    "answer": 0
  },
  {
    "question":
        "Which of the following factors is NOT important when choosing a table or tournament to play?",
    "options": [
      "Buy-in size (entry bet)",
      "Level of play of opponents",
      "Game duration",
      "Guaranteed prize fund"
    ],
    "answer": 2
  },
];

//20
const questions_20 = [
  {
    "question":
        "What is the probability of getting a pair (two cards of the same value) at the beginning of a hand in Texas Hold'em?",
    "options": ["1/13", "1/169", "1/221", "1/17"],
    "answer": 2
  },
  {
    "question":
        "What is the probability of getting a straight (five cards in a row in ascending order) in Texas Hold'em if there are already four straight cards on the table?",
    "options": ["1/47", "1/46", "1/45", "1/44"],
    "answer": 0
  },
  {
    "question":
        "What is the probability of getting a flush (five cards of the same suit) in Five Card Draw Poker if the player has two cards of the same suit in his hands?",
    "options": ["1/47", "1/46", "1/45", "1/44"],
    "answer": 2
  },
  {
    "question":
        "What is the probability of getting a full house (three cards of the same rank and two cards of another rank) in Omaha if the player already has three cards of the same rank in his hands?",
    "options": ["1/45", "1/44", "1/43", "1/42"],
    "answer": 3
  },
  {
    "question":
        "What is the probability of getting a royal flush (ten, jack, queen, king and ace of the same suit) in Stud if the player already has four cards from this combination in his hands?",
    "options": ["1/47", "1/46", "1/45", "1/44"],
    "answer": 1
  },
];
