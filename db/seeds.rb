# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Department.destroy_all
Product.destroy_all

demo = User.create!('name': 'Demo', 'email': 'demo@gmail.com', 'password': 'password')

beauty = Department.create!(name: 'beauty')
food = Department.create!(name: 'food-and-groceries')
kitchen = Department.create!(name: 'kitchen')
attire = Department.create!(name: 'clothing-shoes-and-jewelry')
garden = Department.create!(name: 'garden')
toys = Department.create!(name: 'toys-and-games')
traditional = Department.create!(name: 'traditional')
health = Department.create!(name: 'health')
art = Department.create!(name: 'art')

max_days = 14

# Beauty
# https://www.amazon.com/Seoul-Ceuticals-Korean-Skin-Care/dp/B072K1LNNY/ref=sr_1_9?keywords=korean&qid=1650995701&s=beauty&sr=1-9
p1 = Product.create!('name': 'Korean Skin Care K Beauty - 20% Vitamin C Hyaluronic Acid Serum + CE Ferulic Acid Provides Potent Anti Aging, Anti Wrinkle Korean Beauty 1oz',
    'description': "- THIS KOREAN SKIN CARE VITAMIN C serum contains the same potent, active ingredients as the $160 Skinceuticals CE Ferulic Serum
    *- EXTREMELY EFFECTIVE - WE PROMISE you'll begin to see results with this K beauty product within 3 weeks when used daily
    *- POTENT ANTI AGING, ANTI WRINKLE serum is proven to help reduce the appearance of wrinkles, fine lines & crows feet
    *- THIS TOPICAL VITAMIN C ALSO helps to fade sun spots and is guaranteed to provide you with a brighter more youthful complexion
    *- THIS FACIAL SERUM HELPS TO shrink pores, clear up acne, prevent breakouts, and minimize the appearance of acne scars & perfect under korean makeup",
    'department': beauty.name,
    'delivery_days': rand(max_days) + 1,
    'price': 18.00)
# https://www.amazon.com/Celavi-Collagen-12-Sheets-Classic-Skincare/dp/B07ZQQDZ7S/ref=sr_1_10?keywords=korean&qid=1650995701&s=beauty&sr=1-10
p2 = Product.create!('name': '24PCS NEW Celavi Collagen Facial Face Mask (12-Sheets) Classic Korean Skincare',
    'description': "- Naturally Brighter Skin Tone - Authentic Korean facial masks, when used regularly they can help diminish signs of dark spots, pigmentation, circles, and puffiness.
    *- Infused with Anti-Aging Antioxidants - A truly age-reversing formula, our collagen face masks help create firmer, healthier, more balanced skin for radiant confidence.
    *- Moisturizing Hydration - Infused with natural botanical ingredients like tea tree, cucumber, honey, charcoal, and avocado, it's gentle on dry, oily, or sensitive skin.
    *- Revitalizing Skin Therapy - A deeply-hydrating experience, our face mask sheets infuse your skin with vital moisture while helping improve overall tone and firmness.
    *- Premier Face Mask Quality - Celavi Korean sheet masks offer safe, natural support, include 12 total face mask packs and 1 Thai Tea Pack, and come backed by a satisfaction guarantee you can trust.",
    'department': beauty.name,
    'delivery_days': rand(max_days) + 1,
    'price': 21.99)
# https://www.amazon.com/Etude-House-Moistfull-Collagen-Sleeping/dp/B009SD1LK8/ref=sr_1_50?keywords=korean&qid=1650995701&s=beauty&sr=1-50
p3 = Product.create!('name': 'Etude House Moistfull Collagen Sleeping Pack, 3.38 Ounce',
    'description': "- Overnight leave-in treatment creates a protective barrier on your skin
    *- The sleeping pack makes skin feel hydrated and elastic by forming a moisturizing layer over the skin
    *- Bottle : 100 ml",
    'department': beauty.name,
    'delivery_days': rand(max_days) + 1,
    'price': 15.90)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_beauty_sr_pg1_1?ie=UTF8&adId=A0035362103G0585W4U8B&qualifier=1650995701&id=3940331144248043&widgetName=sp_btf&url=%2Fmixsoon-MIXSOON-Bean-Essence%2Fdp%2FB08ZXVVY8M%2Fref%3Dsr_1_58_sspa%3Fkeywords%3Dkorean%26qid%3D1650995701%26s%3Dbeauty%26sr%3D1-58-spons%26psc%3D1
p4 = Product.create!('name': 'MIXSOON Bean Essence',
    'description': "- Consists of bean, pear, barley, and pomegranates extract fermented with lactobacillus. No alcohol. No fragrance. A reliable EWG green grade essence that is also supplied to postpartum care centers, facials and spas.
    *- Clinical Trial Conducted: Proved to remove the Blackhead & Dead skin & Sebum and Hydrate skin
    *- USE AS Exfoliant: Prep your face with warm water. Gently massage your skin in circular motion. Rinse off the dead skin cell with toner or mixsoon facial essence.
    *- FOR DAILY USE: After toner step > apply appropriate amount of the essence. Do gentle massage in 3 -5 mins until fully absorbed.
    *- NOTE: Please notice that ON our Product pakage: MFD is Manufacturing date and EXP is Expiration date. Products' shelf life: 2 years from MFD.",
    'department': beauty.name,
    'delivery_days': rand(max_days) + 1,
    'price': 32.00)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_beauty_sr_pg1_1?ie=UTF8&adId=A01066613RD0C00J8BV44&qualifier=1650995701&id=3940331144248043&widgetName=sp_btf&url=%2FBIOHEAL-BOH-Derma-Water-Ceramide%2Fdp%2FB09HMKTJVQ%2Fref%3Dsr_1_55_sspa%3Fkeywords%3Dkorean%26qid%3D1650995701%26s%3Dbeauty%26sr%3D1-55-spons%26psc%3D1
p5 = Product.create!('name': 'BIOHEAL BOH Derma Water Ceramide Gel Cream 2 for 1 Edition (3.35 oz x 2 pcs)',
    'description': "- A refreshing gel cream soothes and moisturizes the skin for hydrated and healthy complexion.
    *- Water Ceramide: Reinforces the skin's barrier and locks in moisture.
    *- Aquaxyl: A combination of plant-derived ingredients that target dry and dehydrated skin by improving water circulation and reserves.
    *- Those with the skin irritated and blushed by sun exposure.",
    'department': beauty.name,
    'delivery_days': rand(max_days) + 1,
    'price': 29.00)
# https://www.amazon.com/moisturizing-dehydrated-sensitive-skin-10-rosegold/dp/B09L4L68M5/ref=sr_1_51?keywords=korean&qid=1650995701&s=beauty&sr=1-51
p6 = Product.create!('name': 'Papa Recipe Bombee Sheet Mask, Korean moisturizing honey mask pack for dehydrated and sensitive skin.10 sheets (rosegold+green)',
    'description': "- Bombee Rose Gold Mask Pack moisturizes the skin with the gold-honeycom sheet generously soaked with richly hydrating propolis extract, 24K gold and essence.
    *- Bombee Green Honey Mask Pack moisturizes the skin as well as nourishing with plant originated ingredients.
    *- HYPOALLERGENIC: Papa Recipe sheet masks are beauty products designed to be hypoallergenic and suitable for all skin types, including the most sensitive of skin. Helps improve skin's overall appearance, giving you that youthful glow, without heavy cream, lotion, gel, oil, clay, charcoal, mud, or harsh exfoliating scrub or peel off masks
    *- SKIN BENEFITS: The bombee honey masks has anti aging, hydrating properties to help even out skin tone, acts as a dark or age spot corrector or pore minimizer, decreases the look of fine lines, wrinkles, and redness, brighten dull looking skin, and can even calm mild problematic (acne or acne scars) or flaky skin around the eye, nose, and mouth
    *- PERFECT GIFT: This Korean Moisturizer skincare product makes a great gift or stocking stuffer add on gift for women, men, teens, girls, or holidays (Christmas, Easter, Birthday, Bachelorette, Spa Day and more). Be sure to check out the rest of the Papa Recipe skincare line, sold separately",
    'department': beauty.name,
    'delivery_days': rand(max_days) + 1,
    'price': 19.99)
# https://www.amazon.com/Korean-Skin-Care-K-Beauty-Moisturizer/dp/B09FSW9ZT7/ref=sr_1_58?keywords=korean&qid=1650995829&s=beauty&sr=1-58
p7 = Product.create!('name': 'Korean Skin Care K-Beauty Moisturizer for Oily Skin: DERMA ORGANIC Vitamin C Serum For Face with Hyaluronic Acid, CE, Ferulic Acid Korean Skincare',
    'description': "- Great on Oily Skin: It is light on skin and leaves no residues, makes skin pores tight.
    *- Oil Free Formula: We replaced pore clogging Tocopherol, or Vitamin E oil with Vitamin B & E enriched pure organic Aloe Vera Juice.
    *- NO Oxidation up to 18 months: Unlike the ordinary Vitamin C Serum, it doesn't oxidize under sun, air, even vanity light.
    *- Perfect for Sensitive Skin: It is even safe on child's skin, it doesn't have any harmful ingredients such as Phenoxyethanol, Propylene glycol or Triethanolamine that you see on other popular Vitamin C serums,
    *- No artificial fragrance, color, nor alcohol is added, so it is clear in color with no smell as pure vitamin C should be.",
    'department': beauty.name,
    'delivery_days': rand(max_days) + 1,
    'price': 35.99)
# https://www.amazon.com/flavors-Essence-exfoliate-hydrate-brighten/dp/B0725J9C92/ref=sr_1_67?keywords=korean&qid=1650995829&s=beauty&sr=1-67
p8 = Product.create!('name': "A'pieu Milk Sheet Mask (7 flavors in 1 pack) with Milk Essence to mildly exfoliate, hydrate, and brighten - Korean skincare for normal to dry skin.",
    'description': "- A'pieu Milk Mask hydrates and brightens your skin in one go. Soaked in real milk protein extract that nourishes normal to dry skin types.
    *- The milk-protein-infused daily sheet mask helps restore dry and dull skin.
    *- On a clean and dry face, apply the sheet evenly. Remove after 10-15 minutes.
    *- THE BEST OF K-BEAUTY: A'PIEU brings the very best in Korean beauty to the rest of the world with luxury skincare products that are trendy, effective, and formulated for all skin types.",
    'department': beauty.name,
    'delivery_days': rand(max_days) + 1,
    'price': 14.00)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_beauty-intl-ship_sr_pg1_1?ie=UTF8&adId=A0286062OR158T9K9I9P&qualifier=1650995884&id=4591473942581459&widgetName=sp_btf&url=%2FSulwhasoo-Essential-Comfort-Moisture-Cream%2Fdp%2FB09VP4WMCY%2Fref%3Dsr_1_30_sspa%3Fcrid%3D1JMZJLOAX3UQ0%26keywords%3Dkorean%26qid%3D1650995884%26s%3Dbeauty-intl-ship%26sprefix%3Dkorean%252Cbeauty-intl-ship%252C79%26sr%3D1-30-spons%26psc%3D1
p9 = Product.create!('name': 'Sulwhasoo Essential Comfort Moisture Cream: Hydrate, Moisturize, and Dewy Glow, 1.69 fl. oz.',
    'description': "- A breathable, quenching gel cream that hydrates and comforts skin for a dewy, healthy glow. Powered by JAUM Moisturizing Complex™, a powerhouse of hydrating and nourishing Herbs, Yam, Arrowroot flowers plus Hyaluronic Acid.",
    'department': beauty.name,
    'delivery_days': rand(max_days) + 1,
    'price': 80.00)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_beauty-intl-ship_sr_pg1_1?ie=UTF8&adId=A10288002U2YI1MRBHV0L&qualifier=1650995884&id=4591473942581459&widgetName=sp_btf&url=%2FDaandanbit-Contains-Anti-winkle-functional-Traditional%2Fdp%2FB09FDP7CBZ%2Fref%3Dsr_1_29_sspa%3Fcrid%3D1JMZJLOAX3UQ0%26keywords%3Dkorean%26qid%3D1650995884%26s%3Dbeauty-intl-ship%26sprefix%3Dkorean%252Cbeauty-intl-ship%252C79%26sr%3D1-29-spons%26psc%3D1
p10 = Product.create!('name': 'Daandanbit [DAANDAN BIT] Boyun Firming Cream 50ml / 1.7fl oz Contains camellia sinensis callus culture extract Anti-winkle functional Korean Traditional Herbal Cream 1.7 Ounce',
    'description': "- Boyun Firming Cream 50ml / 1.7fl oz
    *- (Functional cosmetics for the improvement of wrinkles)
    *- This is a cream for elasticity that thoroughly rejuvinates skin elasticity with the combination of natural ingredients and the concentrated nutrients that deliver natural energy to the skin
    *- Camellia Sinensis Callus Culture Extract and vegetable extracts keep the skin fresh and healthy Based on an herbal formula, each of the precious ingredients is carefully selected and blended to erase the traces of time on the skin
    *- During the last step of skincare, apply the appropriate amount to the face and neck areas as if you are massaging your face, and then press it with both hands to encourage absorption",
    'department': beauty.name,
    'delivery_days': rand(max_days) + 1,
    'price': 14.99)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_atf_next_beauty-intl-ship_sr_pg2_1?ie=UTF8&adId=A07075922H5TXAQGKNHBN&qualifier=1650995927&id=2536864278273078&widgetName=sp_atf_next&url=%2FEmulsion-Wrinkle-Nourishing-Moisturizing-Cosmetics%2Fdp%2FB09PKYXD2V%2Fref%3Dsr_1_25_sspa%3Fcrid%3D1JMZJLOAX3UQ0%26keywords%3Dkorean%26qid%3D1650995927%26s%3Dbeauty-intl-ship%26sprefix%3Dkorean%252Cbeauty-intl-ship%252C79%26sr%3D1-25-spons%26psc%3D1
p11 = Product.create!('name': 'YEDAM YUN BIT Prime Luxury Gold Women Skin Care 4 Set With Skin, Emulsion, Cream, BB Cream,Wrinkle Care Nourishing And Moisturizing, Calming Korea Cosmetics',
    'description': "- Korea Skin Care Set: Skin, Emulsion, Cream, BB Cream + 4 Sample
    *- Prime Luxury Gold Intensive Skin: With appropriate mixture of gold powder(99.9% of purity) and phyto placenta extracts, it prevents the loss of moisture on skin and keeps moisturized condition for dried and tough skin to provide more refresh and vitalized skin
    *- Prime Luxury Gold Intensive Emulsion: Both phyto placenta and royal jelly extracts provide abundant nutritions to dried skin and relaxed and smooth feeling to form moisturized membrane on the skin so as to make you feel moisturized, refined and soft skin.
    *- Prime Luxury Gold Intensive Lifting Cream: It is a wrinkle-improving functional cream that corrects the balance of loose skin with adenosine that gives elasticity to the skin and keeps the pure gold(99.9%) and phyto placenta extract moist for a long time.
    *- Prime Luxury Gold Intensive BB Cream: The niacinamide elements prevents the deposition of melanin pigments on the skin and restraints generation of dried skin and skin troubles and the adenosine elements provides resilience to the skin.",
    'department': beauty.name,
    'delivery_days': rand(max_days) + 1,
    'price': 46.99)
# https://www.amazon.com/Face-Shop-Water-Bright-Cleansing/dp/B00FJ2LU2Q/ref=sr_1_28?crid=1JMZJLOAX3UQ0&keywords=korean&qid=1650995927&s=beauty-intl-ship&sprefix=korean%2Cbeauty-intl-ship%2C79&sr=1-28
p12 = Product.create!('name': 'THEFACESHOP Rice Water Bright Foam Cleanser 150ml',
    'description': "- Foaming cleanser with Rice Extract gently moisturizes skin with its rich, dense foam.",
    'department': beauty.name,
    'delivery_days': rand(max_days) + 1,
    'price': 13.00)
# https://www.amazon.com/Korean-Skin-Care-Glycolic-Exfoliating/dp/B07WKDR1BL/ref=sr_1_27?crid=1JMZJLOAX3UQ0&keywords=korean&qid=1650995927&s=beauty-intl-ship&sprefix=korean%2Cbeauty-intl-ship%2C79&sr=1-27
p13 = Product.create!('name': 'Korean Skin Care - Dr Song Glycolic Acid Face Wash - Exfoliating Face Wash with 10% Glycolic Acid, AHA for Anti Aging, Acne and Wrinkles Korean Beauty',
    'description': "- Deep Pore Cleanser and Natural Exfoliation - Lift away dirt, oils, makeup and impurities from your pores with a revitalizing glycolic acid gel that helps clean and clarify your skin while restoring essential moisture and hydration.
    *- Fight Blemishes and Improve Clarity - This glycolic acid facial cleanser can help reduce acne breakouts by toning and tightening pores, reducing whiteheads and blackheads, and restoring healthy, glowing radiance.
    *- Soft, Soothing, Non-Drying Formula - Dr Song glycolic acid exfoliating cleanser is safe on dry, oily, sensitive, irritated, and combination skin and leaves skin feeling softer, suppler, and firmer to the touch for youthful balance.
    *- Age-Defying Antioxidants - A natural anti-inflammatory our glycolic cleanser also helps reduce redness and irritation while also diminishing discoloration, dark bags under your eyes, and hyperpigmentation.
    *- Dr Song Brand Guarantee - Every bottle of glycolic cleanser 10% formula, as well as our other skincare products, is backed by our responsive customer support, superior skin-safe purity, and reliable effectiveness to ensure your satisfaction.",
    'department': beauty.name,
    'delivery_days': rand(max_days) + 1,
    'price': 7.99)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_beauty-intl-ship_sr_pg2_1?ie=UTF8&adId=A00670702RMK6348PLH66&qualifier=1650995927&id=2536864278273078&widgetName=sp_btf&url=%2FSulwhasoo-Essential-Comfort-Balancing-Water%2Fdp%2FB09VPBR3LT%2Fref%3Dsr_1_45_sspa%3Fcrid%3D1JMZJLOAX3UQ0%26keywords%3Dkorean%26qid%3D1650995927%26s%3Dbeauty-intl-ship%26sprefix%3Dkorean%252Cbeauty-intl-ship%252C79%26sr%3D1-45-spons%26psc%3D1
p14 = Product.create!('name': 'Sulwhasoo Essential Comfort Balancing Water: Hydrate, Soothe, and Nourish, 5.07 fl. oz.',
    'description': "- A quick-absorbing moisturizing toner that delivers an instant surge of hydration while helping to balance the skin content for silky, radiant-looking skin.",
    'department': beauty.name,
    'delivery_days': rand(max_days) + 1,
    'price': 68.00)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_atf_next_beauty-intl-ship_sr_pg4_1?ie=UTF8&adId=A0800730365OEGHETHKW3&qualifier=1650996042&id=6281052555721938&widgetName=sp_atf_next&url=%2FDONGINBI-Defense-Anti-aging-Anti-Wrinkle-Antioxidant%2Fdp%2FB09HJP68L6%2Fref%3Dsr_1_75_sspa%3Fcrid%3D1JMZJLOAX3UQ0%26keywords%3Dkorean%26qid%3D1650996042%26s%3Dbeauty-intl-ship%26sprefix%3Dkorean%252Cbeauty-intl-ship%252C79%26sr%3D1-75-spons%26psc%3D1
p15 = Product.create!('name': 'DONGINBI Daily Defense Cream, Anti-aging, Anti-Wrinkle & Antioxidant Face Cream, Korean Red Ginseng Skin Care - 25ml',
    'description': "- PENETRATES DEEPLY TO AWAKEN YOUTHFUL SKIN: Infused with our advanced self-sustaining Red Ginseng formula, the daily defense cream effectively returns your skin to its natural condition. It fights aging to awaken firm, youthful skin.
    *- ANTI-AGING FACE CREAM: The Core RG Ginseno-Biome technology follows a three-phased approach to reverse aging and give you firm, supple skin. It strengthens skin barrier and enhances the skin's ability to heal itself. Wrinkles are reduced and your skin is firm with a youthful glow.
    *- FIRMING & LIFTING SKIN: Our anti-aging daily defense cream is clinically proven to help smooth wrinkles, promote an even skin tone, and visibly firm & lift skin for a difference you can see in just as little as 4 weeks, revealing smoother and younger-looking skin. It can reduce wrinkles by 20.7%, moisturize skin by 10.6%, and improve skin barrier by 11.2%.
    *- MOISTURIZING & NOURISHING: Dense creamy texture, yet lightweight, enriched with Red Ginseng that moisturizes and nourishes the skin. Your skin will not only look better, but will also be healthier.
    *- REJUVENATING KOREAN RED GINSENG: Long-established since 1899, DONGINBI is a reputed skin care brand of the Korean Ginseng Corp. We are dedicated to offering luxurious skin care, and have honed our Red Ginseng processing and refining technology to effectively capture its nourishing and anti-aging properties.",
    'department': beauty.name,
    'delivery_days': rand(max_days) + 1,
    'price': 65.99)


# Food
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_atf_grocery_sr_pg1_1?ie=UTF8&adId=A02640903T6S41CIJ8L42&qualifier=1650996083&id=2763272442096322&widgetName=sp_atf&url=%2FSempio-Pepper-Paste-Gochujang-6-1-Pounds%2Fdp%2FB004R9GFJU%2Fref%3Dsr_1_1_sspa%3Fkeywords%3Dkorean%2Bfood%26qid%3D1650996083%26s%3Dgrocery%26sprefix%3Dkorean%252Cgrocery%252C97%26sr%3D1-1-spons%26psc%3D1%26smid%3DA3QMA05TS4QA12
p16 = Product.create!('name': 'Sempio Gochujang, Hot Pepper Paste (Korean Chili Paste)_6.1lbs (2.8KG)_All Purpose',
    'description': "- WELCOME ADDITION TO ANY FOOD : Great for stir-frying, dipping, marinating, or combining with other condiments like mayo, ketchup, or salsa to spice them up. The thick consistency and heat level give it a spicy kick that makes your dishes more special.
    *- SMOKY HEAT FLAVOR : Sempio Gochujang is characterized by its distinctive ‘smoky heat’ that adds a deep complex spiciness to the dishes. It will add a spicy Korean flavor to your dishes, giving them an exquisitely distinct touch.
    *- PRODUCT OF 'SEMPIO' : 'SEMPIO' has been making high quality soybean products for over 70 years, since 1946. Through our accumulated know-how and technology, we have mastered the art of soybean fermentation, producing products with an incomparably deep & rich flavor.
    *- SAFE & HEALTHY : Made with carefully selected sun-dried red chilies and rice, providing an umami-rich sweet heat.
    *- VEGAN & SQF CERTIFIED : Sempio Gochujang is Vegan and a SQF(Safe Quality Food) certified product.
    *- PRODUCT OF KOREA",
    'department': food.name,
    'delivery_days': rand(max_days) + 1,
    'price': 22.32)
# https://www.amazon.com/Fruits-Mochi-Daifuku-Ichigo-7-4oz/dp/B071HR77KX/ref=sr_1_5?keywords=korean+food&qid=1650996083&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-5
p17 = Product.create!('name': 'Fruits Mochi Daifuku Ichigo 7.4oz/210g',
    'description': "- Kubota Fruit Daifuku (Ichigo / Strawberry)",
    'department': food.name,
    'delivery_days': rand(max_days) + 1,
    'price': 6.88)
# https://www.amazon.com/Jaeraesik-Soybean-Paste-CJ-Haechandle/dp/B00EZX6X04/ref=sr_1_8?keywords=korean+food&qid=1650996083&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-8
p18 = Product.create!('name': 'CJ Haechandle Soybean Paste, Korean Doenjang, 500g (1lb),',
    'description': "- Korea's no.1 doenjang (Soybean paste)
    *- Made in traditional fermentation method for the best flavor and taste loved by many for hundreds of years;
    *- Good on almost any Korean dish especially stew, soup, mixed food, and fusion entrees.
    *- No preservatives; no artificial flavors;
    *- 500g (1.1 lb); product of South Korea",
    'department': food.name,
    'delivery_days': rand(max_days) + 1,
    'price': 6.85)
# https://www.amazon.com/Samyang-Buldark-Chicken-overseas-shipment/dp/B07N8TQSBT/ref=sr_1_19?keywords=korean+food&qid=1650996083&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-19
p19 = Product.create!('name': '[Samyang] Buldark Spicy Chicken Roasted Sauce 200g×2 / Korean food / Korean sauce / Asian dishes (overseas direct shipment)',
    'description': "- Original sauce of Bulldark Spicy Chicken Roasted Noodle Soup
    *- Makes all the dishes delicious and spicy.
    *- Types of Food : Sauces
    *- Manufacturer : Samyang (Korea)
    *- Capacity : 200g×2",
    'department': food.name,
    'delivery_days': rand(max_days) + 1,
    'price': 11.85)
# https://www.amazon.com/Premium-Korean-Balloon-Flower-Ginger/dp/B087ZFBHWD/ref=sr_1_25?keywords=korean+food&qid=1650996083&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-25
p20 = Product.create!('name': 'Premium Real Korean Pear, Balloon Flower Root, & Ginger Juice - No Preservatives or Artificial Additives - Natural and Pure - Health Care for Changing Season - for Men and Women of All Ages',
    'description': "- WHY GINGER BELLFLOWER ROOT PEAR HEALTHY JUICE: Provides nutrients such as magnesium, vitamin C, potassium, calcium, iron, good source of fiber, and other compounds and antioxidants
    *- OUR SUPPLEMENTS: No Water, No Sugar, No Addictives, and No presevatives or artificial additives
    *- ON-THE-GO: 30 Individually packed pouches included. Enjoy it anywhere you go!
    *- INGREDIENTS: Pear 97%, Balloon Flower Root 2%, Ginger 1% (Farm Produces as a good quality)
    *- PRODUCT PACKAGING: 100ml x 30 pouches (1 Box) / 100% Cold Pressed Juice(착즙한 도라지 배즙)",
    'department': food.name,
    'delivery_days': rand(max_days) + 1,
    'price': 35.99)
# https://www.amazon.com/Korea-Seasoned-Dried-Flower-%EA%BD%83%EB%B3%B4%EB%8B%A4%EC%98%A4%EC%A7%95%EC%96%B4/dp/B07X3WJJ86/ref=sr_1_27?keywords=korean+food&qid=1650996083&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-27
p21 = Product.create!('name': 'Korea Seasoned Dried Squid Snack Squid Over Flower 15g X 10 Pack 꽃보다오징어',
    'description': "- Dried squid with special seasoning 15g / 0.5oz X 10 Pack
    *- Sweet & salty dried squid",
    'department': food.name,
    'delivery_days': rand(max_days) + 1,
    'price': 18.88)
# https://www.amazon.com/Yopokki-Jjajang-Rabokki-Ramen-Noodle/dp/B09L496VZ6/ref=sr_1_29?keywords=korean+food&qid=1650996179&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-29
p22 = Product.create!('name': 'Yopokki Jjajang Rabokki Cup I Ramen Noodle Rice Cakes (Jjajang taste, 2 Cup)',
    'description': "- A TASTE OF KOREA - We have captured the delicious taste of various Korean dishes so that they can be prepared in minutes but accessible anywhere in the world. This particular dish has a soft texture mixed with a spicy and sweet sauce!
    *- Precautions - Do not eat deoxidizer packaged with rice cake.
    *- Precautions - If you smell an unpleasant odor, it will be removed during the cooking process.
    *- Precautions - Some spots on the surface of the product are part of the rice, so please eat with confidence",
    'department': food.name,
    'delivery_days': rand(max_days) + 1,
    'price': 11.99)
# https://www.amazon.com/Kewpie-Mayonaise-17-64-Ounce-Tubes-Pack/dp/B003NRLLLE/ref=sr_1_30?keywords=korean+food&qid=1650996179&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-30
p23 = Product.create!('name': 'Kewpie Mayonaise, 17.64-Ounce Tubes (Pack of 2)',
    'description': "- Flavor:   Egg
    *- Brand:  Kikkoman
    *- Package Information:    Tube
    *- Package Weight:    0.52 Kilograms
    *- Material Feature:   Gluten Free",
    'department': food.name,
    'delivery_days': rand(max_days) + 1,
    'price': 15.19)
# https://www.amazon.com/Tae-kyung-Korean-Pepper-Flakes-Gochugaru/dp/B099FKF9N6/ref=sr_1_39?keywords=korean+food&qid=1650996179&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-39
p24 = Product.create!('name': 'Tae-kyung Korean Red Chili Pepper Flakes Powder Gochugaru, 1 Lb-1',
    'description': "- Korean Red Chili Pepper Powder you can sprinkle over anything if you want to add Spicy
    *- Affordable choice for budget conscious buyers - 1lb Pack with resealable
    *- SPICE UP YOUR RECIPE: Red dry chili flakes is used to make kimchi, hot chili oil and hot sauce. Add red chili powder to casseroles, curries, stews, pizza, salads, tacos, soups and barbecue spice rubs with a strong kick.
    *- This Red Pepper Flakes is 100% natural and non-irradiated. We never add any other ingredients in any proccess. All chilies are natural without additive, coloring or gmo.
    *- 100% premium quality south korea origin topokki vegetarian vegan food keto diet nutritional asian cuisine organic fresh dinner kfood kpop japanese Chinese dry buldak best product tteokbokki non GMO Gluten free foreign zipper bag coarse kimchi seasoning fine type sun dried original peppers natural pure flavor ramen Cheong Yang famous coarsely taste kosher no additives grind convenient reuse reusable BBQ soup dips stir fry fried pizza salad barbecue rubs chicken sauce sprinkle freshly sprinkled
    *- homemade extra strong spice dish essential safe bulk health healthy packaged international k-food delicious cooking crushed paleo seasoned meals naturally",
    'department': food.name,
    'delivery_days': rand(max_days) + 1,
    'price': 11.84)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_grocery_sr_pg3_1?ie=UTF8&adId=A0092745HBOEWVWOCOA7&qualifier=1650996257&id=4601855170084462&widgetName=sp_btf&url=%2Fbibigo-Korean-Pre-Made-Packaged-Seaweed%2Fdp%2FB07R1J915H%2Fref%3Dsr_1_71_sspa%3Fkeywords%3Dkorean%2Bfood%26qid%3D1650996257%26s%3Dgrocery%26sprefix%3Dkorean%252Cgrocery%252C97%26sr%3D1-71-spons%26psc%3D1%26smid%3DAT03FDQZB4H70
p25 = Product.create!('name': 'bibigo Korean Pre-Made Packaged Seaweed Soup 500g 미역국',
    'description': "- Flavor:   Seaweed
    *- Item Weight:    500 Grams
    *- Brand:  CJ Bibigo
    *- Package Weight: 0.52 Kilograms",
    'department': food.name,
    'delivery_days': rand(max_days) + 1,
    'price': 12.94)
# https://www.amazon.com/Palkin-flavors-Korean-overseas-shipment/dp/B07NJDHZVX/ref=sr_1_78?keywords=korean+food&qid=1650996274&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-78
p26 = Product.create!('name': '[Palkin] Korea Ramen Tea Bag 16ea (8 hot&spicy flavors + 8 mild flavors) / Korean food / Korean tea / Korean Ramen / Would you like a cup of ramen? (overseas direct shipment)',
    'description': "- Would you like a cup of ramen?
    *- No MSG, delicious Korean ramen soup tea
    *- Manufacturer: Palkin (Korea)
    *- Capacity : 16ea (8 hot&spicy flavors + 8 mild flavors)
    *- Recipe : Put 1 tea bag to hot water (110ml), then eat after 30 ~40s.",
    'department': food.name,
    'delivery_days': rand(max_days) + 1,
    'price': 19.90)
# https://www.amazon.com/CJ-Beksul-Furikake-Seasoning-Vegetable/dp/B01JW1EBIY/ref=sr_1_110?keywords=korean+food&qid=1650996318&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-110
p27 = Product.create!('name': 'CJ New Beksul Furikake Rice Seasoning Mix 밥이랑, 0.85Oz (Vegetable Mix, 1 Pack)',
    'description': "- CJ Beksul Furikake Rice Seasoning Mix
    *- Assorted Vegetable Mix
    *- Contains 3 individual package (8g each)
    *- Easy to make lunch box!
    *- 1 Pack",
    'department': food.name,
    'delivery_days': rand(max_days) + 1,
    'price': 6.95)
# https://www.amazon.com/Dongsuh-Peanut-cereals-overseas-shipment/dp/B08C9SDF6X/ref=sr_1_126?keywords=korean+food&qid=1650996318&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-126
p28 = Product.create!('name': '[Dongsuh] Post Peanut Butter Oreo o`s 400g / Korean cereals (overseas direct shipment)',
    'description': "- Korean limited edition cereals made of peanut butter
    *- Capacity : 400g
    *-  Manufacturer : Dongsuh Food (Korea)
    *- Ingredients : Corn flour, brown rice flour, barley flour, rye flour, whole wheat flour, peanut powder, peanut butter, etc.",
    'department': food.name,
    'delivery_days': rand(max_days) + 1,
    'price': 29.58)
# https://www.amazon.com/Bonjuk-Premium-Korean-Porridge-Seafood/dp/B085VQM4BG/ref=sr_1_164?keywords=korean+food&qid=1650996358&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-164
p29 = Product.create!('name': 'Bonjuk Premium Korean Porridge New Flavor 17.6oz, Pack (Seafood)',
    'description': "- Easy to cook!
    *- Boiling water and Microwavable package
    *- 1 pack (17.6oz) per order",
    'department': food.name,
    'delivery_days': rand(max_days) + 1,
    'price': 9.99)
# https://www.amazon.com/Crispy-Potato-Korean-Flavour-Medium/dp/B09BBFTXPC/ref=sr_1_184?keywords=korean+food&qid=1650996376&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-184
p30 = Product.create!('name': 'LAYS Brand , Crispy Potato Chips Spicy Korean Ramen Flavour, 50g X 3 Packs, Medium',
    'description': "- Don't miss one of Lay's tasty Popular menu in Korean style . Made from real potatoes.
    *- Made from quality ingredients and Through clean and standardized production processes.
    *- Inspired by the hottest famous menu in Korea Spicy Korean Ramen, Mellow soup mixed with Korean style spicy sauce ''Hot and Spicy'' delicious to the original taste. a new flavour that everyone should not miss!
    *- Ideal for any time of the day.
    *- Allergen information: soy
    *- Flavor name: Garlic
    *- Ingredients: Potato, Seasoning, Vegetable Oil",
    'department': food.name,
    'delivery_days': rand(max_days) + 1,
    'price': 14.99)
# https://www.amazon.com/Official-HBAF-Seasoned-Almonds-Chicken/dp/B09XB6RZNN/ref=sr_1_224?keywords=korean+food&qid=1650996444&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-224
p31 = Product.create!('name': 'Official Gilim HBAF Brand Korean Seasoned Almonds 3 Flavor Pack Mix (1 Honey Butter, 1 x 210g, 1 Garlic Bread, 1 x 210g, 1 Hot and Spicy Chicken, 1 x 210g)',
    'description': "- One (1) pack of 7.4 oz (210 gram) HBAF Honey Butter Almond. The signature flavor of HBAF! Its sweet, savory, and butter goodness are loved by everyone.
    *- One (1) pack of 7.4 oz (210 gram) HBAF Garlic Bread Almond. Enjoy the butter garlic almonds with real garlic bread bites. Your mind will explode with happiness!
    *- One (1) pack of 7.4 oz (210 gram) HBAF Hot and Spicy Chicken Flavor. Bold collaboration with Korean heavily spiced fire chicken dish, Buldak. Challenge the super spicy taste and relieve the stress!
    *- All packs provide a great source of protein to your daily life.
    *- All packs have a zip seal, perfect for storing after opening. Enjoy!",
    'department': food.name,
    'delivery_days': rand(max_days) + 1,
    'price': 26.97)

# Kitchen
# https://www.amazon.com/Crazy-Korean-Cooking-Sizzling-Bibimbap/dp/B00KFMTLOO/ref=sr_1_2?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996487&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-2
p32 = Product.create!('name': 'Crazy Korean Cooking Korean Stone Bowl (Dolsot), Sizzling Hot Pot for Bibimbap and Soup - Premium Ceramic (Large with Lid)',
    'description': "- Premium stoneware (100% ceramics) made from high quality fine clay, glaze-fired twice with a natural glaze. Simple yet elegant design makes your food stand out and look beautiful. Very giftable packaging.
    *- MADE IN KOREA. Lead free, cadmium free, arsenic free. Tested regularly for regulated heavy metals.
    *- Use directly on gas or electric stovetops, in ovens, broilers and microwaves. Dishwasher safe. Hand-washing preferable for long-lasting appearance.
    *- 1 bowl, 1 lid, 1 black plastic trivet/coaster included. Plastic trivet is heat resistant. Hot stone bowl can go on the trivet straight from the stove or oven. Do not place plastic trivet directly on the stove or in the oven.
    *- No seasoning or pre-soaking necessary. Easy to maintain, and more sanitary and long-lasting compared to bowls made with natural stone.
    *- Food tastes better and retains more nutrients due to the even distribution of heat and the emission of far-infrared heat. Does not taint taste or look of the food like metal pots do.
    *- Cook and serve in the same bowl. Perfect for sizzling dolsot bibimbap and serving stews or soups hot and delicious. Keeps the food sizzling and hot while eating.
    *- Versatile: Great for soups, noodle soups, stews, rice, risotto, baked pastas, chili, casserole dishes, pot pies, beans, vegetables, hot pot table cooking, stir-fry.
    *- volume: 44 fl oz (1300 ml), about 5.4 cups, inner diameter: 6.5” (16.5 cm), outer diameter: 7.75” (19.7 cm), width with handles: 8.75” (22.2 cm), bowl height: 3.12 (8 cm), lid height: 2.37(6 cm).",
    'department': kitchen.name,
    'delivery_days': rand(max_days) + 1,
    'price': 46.99)
# https://www.amazon.com/Korean-Ramen-Cooking-Pot-Chopsticks-Heating-Kitchen-Cookware/dp/B08G1CM3XX/ref=sr_1_6?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996487&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-6
p33 = Product.create!('name': 'AHIER Ramen Pot, Korean Ramen Cooking Pot With Lid Spoon and Chopsticks (1pair), Korean Ramen Noodle Pot Fast Heating For Kitchen Cookware (Double handle) (6.3in)',
    'description': "- 【Korean Yellow Ramen Pot】: Korean pot for ramen is Korean cookware made of aluminum，Additional free components Spoon&Chopsticks are provided， which is perfect for ramyun, instant curry, kimchi jjigae, soup, stew, more dishes, etc. 
    *- 【Lightweight】: Korean ramen noodle pot is lightweight and stackable, so it is perfect for camping, hiking, picnic, backyard parties, beach, patio, dinner party, etc.
    *- 【Fast Heating】: Korean ramen noodle pot material has strong thermal conductivity and heats up quickly. When heating, the pot body and handle are scorching, please pay attention to heat insulation.
    *- 【Durable and Easy To Clean】: Ramen pot gold is easy to clean, does not rust, is durable, and is used for a long time as new
    *- 【Direct Heating】: The Korean ramen pot can be directly heated by an open flame and electric ceramic furnace convenient to use.",
    'department': kitchen.name,
    'delivery_days': rand(max_days) + 1,
    'price': 16.99)
# https://www.amazon.com/TeChef-Tamagoyaki-Japanese-Collection-Non-stick/dp/B00N4N2EP4/ref=sr_1_7?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996487&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-7
p34 = Product.create!('name': 'TECHEF - Tamagoyaki Japanese Omelette Pan / Egg Pan, Made in Korea (Purple) (Medium)',
    'description': "- Long Life Nonstick - New Safe PFOA Free Teflon Select with new, proprietary and patented scratch resistance technology
    *- Specialty - an unique sloped shape allows for easy flipping of omelets, sandwiches, and pancakes
    *- Safe new Teflon coating (No PFOA) - new Teflon nonstick coating are made without using PFOA and are affirmed safe for cooking by regulatory agencies worldwide
    *- Induction-ready - extra-heavy gauge aluminum construction with stainless steel base
    *- Made in Korea - Delivers outstanding performance and exceptional quality",
    'department': kitchen.name,
    'delivery_days': rand(max_days) + 1,
    'price': 32.99)
# https://www.amazon.com/Spoons-pieces-Stainless-Kitchen-Restaurant/dp/B083LV6S6Q/ref=sr_1_10?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996487&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-10
p35 = Product.create!('name': 'Soup Spoon,Korean Spoons, 8 Pieces Stainless Steel Asian Soup Spoon,8.5 Inch Soup Spoons,Long Handle Korean Spoon,Dinner Spoons Ramen Spoon for Home Kitchen or Restaurant (Black)',
    'description': "- Material: Set of 8 Korean spoons adopt durable high-quality stainless steel material and mirror polishing processing technique, Corrosion resistant, no rust.
    *- Korean Spoons with Long Handles: The length of the spoon's handle is 6.46 in.The perfect heavy-duty handle is sturdy and convenient for use.
    *- Wide Korean Spoons Head: The width of the Korean soup spoon head is 1.57 in.The wide spoon head can hold the food and ensure that the food does not fall. Sleek edges, no shaves, suitable for every adult and child.
    *- Dishwasher Safe: Easy to clean.Not distorted, not deformed. The stainless steel Korean spoon will mix well with your existing flatware pieces, working ends are modern, functional, and comfortable.
    *- Multi-purpose Use：These Asian soup spoon are suitable for daily use, can be used In restaurants, food shops, catering halls. Not just for soups, but also cereal, stew, chili, ravioli, and desserts. The dinner spoons are wonderful tool for home, a decent gift for guests.",
    'department': kitchen.name,
    'delivery_days': rand(max_days) + 1,
    'price': 15.99)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_mtf_kitchen-intl-ship_sr_pg1_1?ie=UTF8&adId=A043440539AZ5QGAC648B&qualifier=1650996487&id=8124655637283983&widgetName=sp_mtf&url=%2FCooker-Intelligent-Digital-Preset-Stainless%2Fdp%2FB09JSDM8KH%2Fref%3Dsr_1_13_sspa%3Fcrid%3DVI05AD20QT0%26keywords%3Dkorean%2Bkitchen%26qid%3D1650996487%26s%3Dkitchen-intl-ship%26sprefix%3Dkorean%2Bkitchen%252Ckitchen-intl-ship%252C54%26sr%3D1-13-spons%26psc%3D1%26smid%3DAJ83XRP02KL30
p36 = Product.create!('name': 'Rice Cooker,Intelligent Digital Slow Cooker with 8 Preset Menus,24H Delay Timer and Auto Warmer,16Cup(cooked)/4L Stainless Black.',
    'description': "- 【Perfect Rice Every Time】24H automatic heat preservation and reservation cooking function , The design of steam valve and the making of the inner pot are engineered to preserve the steam and heat during the simmer process for perfect fluffy rice every time.
    *- 【 Multifunctional Cooking with 8 preset】The rice cooker could provide you endless meal options ranging from traditional rice cooking, steamed veggies, soup and stew to sweet treats like cakes and even yogurt. The DIY function is designed to create as many possibilities with your imaginations.
    *- 【advanced technology】 Advanced 360°Induction Heating Technology includes dual temperature sensors and heat-retaining stainless steel lid that promotes balanced, even heating and more efficient cooking
    *- 【4.3 Qt/16 Cup Ultra Capacity】16 cup cooked (4.3 Qt) Its large capacity can house small individual meals, prepare sizeable family meals, and is also great for entertaining!capacity designed for families or any other outdoor activities.
    *- 【Easy to clean】 Stainless steel external housing is easy to clean. With the non-stick coating, the cleaning of the inner pot is like a breeze. The inner pot and all of the accoutrements that comes with the cooker can be washed in the dishwasher.",
    'department': kitchen.name,
    'delivery_days': rand(max_days) + 1,
    'price': 79.99)
# https://www.amazon.com/Stirring-Cooking-Japanese-ADLORYEA-friendly/dp/B07CXNKTD4/ref=sr_1_16?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996487&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-16
p37 = Product.create!('name': 'Wooden Spoons, 6 Pieces 9 Inch Wood Soup Spoons for Eating Mixing Stirring, Long Handle Spoon with Japanese Style Kitchen Utensil, ADLORYEA Eco Friendly Table Spoon',
    'description': "- ECO-FRIENDLY NATURAL MATERIAL- Made by Phoebe Nanmu Wood. Each wooden soup spoon is grinded by hand and well-finished with a type of natural plant oil glaze that does not come off. No odor! No BPA & toxic!
    *- BEAUTIFUL DESIGN & UNIQUE GRAIN – Comfortable design with exquisite grain patterns. Wood Grain varies by years and the grow conditions made these handmade table spoons Unique.
    *- EXQUISITE WORKMANSHIP & DURABLE - 9 INCH LENGTH with 15g for each dinner spoons. Very Smoothly, Lightweight but sturdy, No crack! Will last long time even everyday used!
    *- MULTI-FUNCTION - The Tablespoon are the just right & perfect size (not Huge & not small) for Eating, Stirring hot soups, coffee, making your Nasi goreng (fried rice), curries, and other dishes. Eating cereal, rice, Korean or Japanese meals. These wooden kitchen eating utensils are the best when using non-stick cookware, will not scratch up your pots and pans.
    *- What You Get - 6 pieces Wooden Table Spoons are as a set. Giftbox Packaging, perfect household gifts for your family or friends . Friendly Customer Service for this cooking spoon will be count as soon as you bought.",
    'department': kitchen.name,
    'delivery_days': rand(max_days) + 1,
    'price': 16.99)
# https://www.amazon.com/TeChef-Stovetop-Non-Stick-Coating-Technology/dp/B00JT8ZYCS/ref=sr_1_19?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996487&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-19
p38 = Product.create!('name': 'TECHEF - Stovetop Korean BBQ Non-Stick Grill Pan with New Safe Teflon Select Non-Stick Coating (PFOA Free) (Grill Pan)',
    'description': "- BEST NONSTICK - New Safe PFOA Free Teflon Select / Coated 5 times with Teflon Print Designs
    *- GOOD INNOVATION - The unique swirled channel design helps oils drain slowly to give food more flavor.
    *- HEALTHY COOKING - Fat/Grease Draining System - Good for Pork Belly or Any Type of Meat
    *- MADE IN KOREA - Delivers outstanding performance and exceptional quality
    *- OVEN/DISHWASHER SAFE - Oven safe up to 450ºF and are dishwasher safe for easy cleaning",
    'department': kitchen.name,
    'delivery_days': rand(max_days) + 1,
    'price': 39.99)
# https://www.amazon.com/Barbecue-Cutting-Serrated-Stainless-Scissors/dp/B01MYTIC16/ref=sr_1_24?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996563&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-24
p39 = Product.create!('name': 'Korean Barbecue Kalbi Rib Meat Cutting Shears/Serrated 3T Blade/Quality Stainless Steel Scissors Large 10 1/4 Inches',
    'description': "- Quality Stainless Steel Material Construction - Sturdy and Durable
    *- Serrated Blade - To prevent meat from slipping
    *- Dimensions: Total Length: 10 1/4 Inches; Blade Thickness: 3T (3mm)
    *- Suitable for cutting all kinds of meat, especially Korean Barbecue Ribs 'Kalbi'",
    'department': kitchen.name,
    'delivery_days': rand(max_days) + 1,
    'price': 5.89)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_kitchen-intl-ship_sr_pg1_1?ie=UTF8&adId=A05863291JYM0BW39FK24&qualifier=1650996563&id=2534797092238754&widgetName=sp_btf&url=%2FElectric-Portable-Nonstick-Multifunction-Saucepan%2Fdp%2FB09GN7JKJ9%2Fref%3Dsr_1_30_sspa%3Fcrid%3DVI05AD20QT0%26keywords%3Dkorean%2Bkitchen%26qid%3D1650996563%26s%3Dkitchen-intl-ship%26sprefix%3Dkorean%2Bkitchen%252Ckitchen-intl-ship%252C54%26sr%3D1-30-spons%26psc%3D1
p40 = Product.create!('name': 'Hytric Electric Hot Pot with Steamer, 1.5L Portable Nonstick Frying Pan for Sauté, Multifunction Electric Skillet for Fry, Mini Ramen Cooker with Dual Power Control for Dorm, Electric Saucepan, White',
    'description': "- Multi-Function Electric Hot Pot - This multi-functional electric hot pot is an essential appliance for every kitchen. It can replace various traditional stove kitchenware because it can be used as a sauté pan, frying pan, cooking pot, and steamer. It has an adjustable power knob, you can use the low-power mode(300W) for cooking ramen, scrambled eggs, pancake. Meanwhile, you can cook spaghetti, steak, salmon, hot pot, sauté with the high-power mode(600W).
    *- Stainless Steel Steamer - This mini pot comes with a food-grade stainless steel steamer. While cooking with this pot, you can also use the steamer to heat or steam food. This 1.5L electric cooker has a mini size (14.4 in x 7.7 in x 5.1 in) for easy to store and portable, particularly useful in a small space without a kitchen like studio apartments, offices, and dorms. If you are a travel lover, you can bring it with you to go on a trip and can cook your favorite food in a tourist place.
    *- Healthy Non-Stick Coating - Hytric electric frying pan surface is made of food-grade nonstick coating which has the features to provide an effortless release and easy cleaning. You can sauté your foods smoothly on the pan to prevent sticking and cook foods at a low level of fat and oil to make your foods healthier. After cooking, easy clean up the surface with water and a rag.
    *- Rapid Heating and Safe - We use round-shaped embedded heating element technology on our electric hot pot. This technology will keep your food heated evenly, not only make your tasty foods done more rapidly than traditional stove kitchenware but also prevent the foods from burning. In addition, Hytric electric hot pot has overheating protection, it will automatically power off when the pot at the dry burning and overheating status.
    *- Good Gift Choice - Hytric electric cooker has an elegant look and humanized design, it can be your good gift choice for those who love cooking. The electric cooker has an anti-scalding long handle for you to hold it easily and we use the high-quality tempered glass lid to let you check the cooking process through the glass lid.",
    'department': kitchen.name,
    'delivery_days': rand(max_days) + 1,
    'price': 33.99)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_atf_next_kitchen-intl-ship_sr_pg2_1?ie=UTF8&adId=A0757546O810UQ8S79OY&qualifier=1650996580&id=2330488405705501&widgetName=sp_atf_next&url=%2FMDLUU-Dolsot-Bibimbap-Granite-Korean%2Fdp%2FB085VWTFCQ%2Fref%3Dsr_1_27_sspa%3Fcrid%3DVI05AD20QT0%26keywords%3Dkorean%2Bkitchen%26qid%3D1650996580%26s%3Dkitchen-intl-ship%26sprefix%3Dkorean%2Bkitchen%252Ckitchen-intl-ship%252C54%26sr%3D1-27-spons%26psc%3D1
p41 = Product.create!('name': 'MDLUU 2 Pcs Dolsot Bibimbap Bowl 32 Oz, Granite Stone Bowl with Wood Base, Dolsot Pot for Korean Soup, Rice and Stew',
    'description': "- MATERIAL: Made of natural granite. Each product is examined to ensure the quality before selling, natural patterns and colors do not affect the usage
    *- SIZE: 7.08 inches in diameter, 3.03 inches in height (Capacity: 32oz)
    *- RETAINS HEAT: Natural granite retains heat well, safe to use on open flames, cook food in a quicker and more effective way, keep the food warm and help further slow cooks
    *- CREATES AN EARTHY SMORKY FLAVOR：While reheating the rice, coating a layer of sesame oil on the bowl helps to form a nice crisp crust and inherit an earthy smoky flavor
    *- CLEAN AND CARE: The package comes with detailed instructions for how to use stone bowls",
    'department': kitchen.name,
    'delivery_days': rand(max_days) + 1,
    'price': 45.89)
# https://www.amazon.com/Cleaver-Butcher-Vegetable-Kitchen-Camping/dp/B08JHWYXB1/ref=sr_1_25?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996580&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-25
p42 = Product.create!('name': 'Viking Knife Meat Cleaver Knife Hand Forged Boning Knife with Sheath Butcher Knives High Carbon Steel Fillet Knife Chef Knives for Kitchen, Camping, BBQ',
    'description': "- Premium Quality – Keep in mind that this handmade high carbon steel boning knife is not dishwasher-safe. You will need to hand-wash it and keep it clean and dry to resist rust after each use. Compared with meat knives made by general stainless steel, our forged kitchen knives have an extraordinary performance in edge-retention and a longer service life. The 6-inch sturdy blade passed multiple hand-grinding processes for an incredibly sharp cutting edge.
    *- Unique Leather Sheath -- The outdoor chef knife is equipped with a practical soft leather sheath to protect the blade. You can put a belt on it for easy carrying when camping outdoor. The portable camping knife is your ideal assistant for Butchering, Fishing, Camping, and Outdoor BBQ activities.
    *- Stylish & Practical – Unique hammered texture on the blade make it beautiful to behold and corrosion resistant while it also helps to prevent foods from sticking. Curved wood handle and large finger hole on the blade provides a secure grip for excellent control while filleting fish, chopping vegetables and deboning meat. The Full Tang design prevent this fillet knife from falling easily.
    *- Multipurpose -- This handmade meat cleaver is classified as a multi-function kitchen knife. The curved blade is perfect for many kitchen tasks like trimming brisket, slicing meat, and chopping vegetables, breaking down a whole chicken and deboning of lamb ribs.
    *- Well Packaged – All of our boning knives pass strict quality control before shipped and well packaged in an elegant box. We provide 100% SATISFACTION WARRANTY and 30-day money back guarantee for quality issues. It’s definitely an ideal gift for your lovers, family members and friends who loves cooking and knives.",
    'department': kitchen.name,
    'delivery_days': rand(max_days) + 1,
    'price': 25.99)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_mtf_kitchen-intl-ship_sr_pg2_1?ie=UTF8&adId=A0192276FBJBOSPPLRYL&qualifier=1650996580&id=2330488405705501&widgetName=sp_mtf&url=%2FTobyan-Soft-Cotton-Linen-Apron%2Fdp%2FB09PMTG2KM%2Fref%3Dsr_1_30_sspa%3Fcrid%3DVI05AD20QT0%26keywords%3Dkorean%2Bkitchen%26qid%3D1650996580%26s%3Dkitchen-intl-ship%26sprefix%3Dkorean%2Bkitchen%252Ckitchen-intl-ship%252C54%26sr%3D1-30-spons%26psc%3D1
p43 = Product.create!('name': 'Tobyan Soft Cotton Linen Apron - Retro Linen Art Apron, Adjustable Casual Apron with Towel, Great for Florist, Coffee House and Kitchen (Grey)',
    'description': "- Linen
    *- Material: Exquisite workmanship Tobyan Bib Apron is made from fabric of cotton linen, which comfortable and soft, does not look swollen after wearing.
    *- Design: Simple, fashion and natural art apron will bring your house life more charming. 3 front square pockets, convenient temporary storage of the required items. In addition, this apron is also equipped with absorbent towel, so that you can wipe the water stains on the table at any time.
    *- Adjustable Size: Unique design with an adjustable neck strap and waist strap, you can adjust neck length and waist looseness according to your needs. This apron is suitable for most people.
    *- Easy To Clean: This casual apron is machine washable, fade-proof. Do not use bleach. Wash with cold water and air dry naturally.
    *- Widely used: Retro art cotton apron, suitable for cooking, baking, painting, crafts, gardening, barbecue, and house cleaning. This is a great gift for family or friends.",
    'department': kitchen.name,
    'delivery_days': rand(max_days) + 1,
    'price': 17.69)
# https://www.amazon.com/Wooden-Long-Spoons-Natural-Cooking/dp/B09PZ6FM39/ref=sr_1_37?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996580&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-37
p44 = Product.create!('name': 'Wooden Soup Spoon, 2PCS Wooden Long Spoons Korean Style Natural Wood Long Handle Round Spoons Long Soup Spoons for Soup Cooking Mixing Stirrer Kitchen Tools',
    'description': "- 2 PIECES LONG WOODEN SPOONS, salad spoon,cooking spoon, soup spoons, Simple and plain, 10.9 inches LENGTH, natural color and elegant.
    *- LONG KOREAN STYLE SPOON Perfect for Soup Cooking Stirrer Mixing Eating Kitchen Tools Utensils. Great for hiking, mountain hiking, camping, lake fishing, construction site lunch or picnicking.
    *- WOOD SPOON SET is made of natural Nanmu wood, durable and sturdy body, the skin is smooth and clear. Healthy, Natural Painted. w/o BPA, PVC, or phthalates.
    *- WOOD KITCHEN TOOLS are safe to use on cups, dishes and bowls, as well as scratch-resistant they are. it may not frostbite or scald your hands,no matter how cold or hot the water is.
    *- SPOONS DISHWASHER SAFE easy to clean and reusable Safe for non-stick surfaces, safe, healthier, it can't heated by microwave.",
    'department': kitchen.name,
    'delivery_days': rand(max_days) + 1,
    'price': 10.99)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_kitchen-intl-ship_sr_pg2_1?ie=UTF8&adId=A021592422Z25NWKYDI0Z&qualifier=1650996580&id=2330488405705501&widgetName=sp_btf&url=%2FSanbege-Ceramic-Sizzling-Bibimbap-Casserole%2Fdp%2FB09MCY4ZV2%2Fref%3Dsr_1_45_sspa%3Fcrid%3DVI05AD20QT0%26keywords%3Dkorean%2Bkitchen%26qid%3D1650996580%26s%3Dkitchen-intl-ship%26sprefix%3Dkorean%2Bkitchen%252Ckitchen-intl-ship%252C54%26sr%3D1-45-spons%26psc%3D1
p45 = Product.create!('name': 'Sanbege Large Korean Ceramic Bowl with Lid and Trivet, 54 oz Sizzling Hot Pot with Double Handles for Cooking and Serving Dolsot Bibimbap, Soup, Rice, Stew, Casserole, Noodle',
    'description': "- PREMIUM MATERIAL: This Korean ceramic bowl is fired from fine clay at high temperature and well glazed the surface in smooth finish, which is non-toxic and evenly conducts heat to cook better
    *- DETAILED DESIGN: The curve shaped double handles and heat-resistant melamine trivet, are safe and convenient for you to grip and keep your table top from heat; The lid air vent and extra high bowl rim can prevent boiling over; The slightly rough rim of the lid and bottom make stably covering and sitting on table
    *- CONVENIENT USAGE: Can be used for serving food and cooking directly on gas stovetop, electric glass cooktop (Not for induction burner); Also safe for oven, broiler, microwaves, refrigerator and dishwasher, which is convenient for everyday use
    *- CLASSIC STYLE: The minimalistic elegant drum shaped body and glossy black glazed surface, make it a traditional Korean style bowl to display food nicely
    *- VERSATILITY: This 8.6 in W x 4.9 in H Korean ceramic bowl holds up to 54 oz/1.6 L, perfect for cooking soups, stews, casseroles, dolsot bibimbaps, Kimchi jjigae, ramen, noodle or steamed egg, keeping the food hot and sizzling on dining table which greatly enhance appetite",
    'department': kitchen.name,
    'delivery_days': rand(max_days) + 1,
    'price': 32.99)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_atf_next_kitchen-intl-ship_sr_pg3_1?ie=UTF8&adId=A05884062QA2NW4EKL7RS&qualifier=1650996673&id=993139042312979&widgetName=sp_atf_next&url=%2FCooking-Capacity-Ceramic-Casserole-23-6fl%2Fdp%2FB09NNG724R%2Fref%3Dsr_1_50_sspa%3Fcrid%3DVI05AD20QT0%26keywords%3Dkorean%2Bkitchen%26qid%3D1650996673%26s%3Dkitchen-intl-ship%26sprefix%3Dkorean%2Bkitchen%252Ckitchen-intl-ship%252C54%26sr%3D1-50-spons%26psc%3D1
p46 = Product.create!('name': 'Clay Pot For Cooking Small Capacity Ceramic Casserole Ceramic Pots For Cooking, 23.6fl Oz',
    'description': "- clay pot for cooking Be applicable: Casserole can be used as a pan for stews, soups, casseroles and other recipes.
    *- clay pot for cooking Material: Porcelain ceramic body, selected from Australia's imported spodumene, high temperature resistance, resistance to hot and cold, smooth glazed look, warm and delicate touch.
    *- clay pot for cooking scope of application: Suitable for gas, oven, electric ceramic stove, microwave oven. Prohibit use on induction cooker.
    *- clay pot for cooking Features: The heat preservation ability is good, the heat in the pot is even, and the fragrance is easier to enter the food, so that the food can release the nutrition and the fragrance.
    *- Service: A very durable clay pot for cooking that you can buy with confidence, we are proud of our excellent customer service.",
    'department': kitchen.name,
    'delivery_days': rand(max_days) + 1,
    'price': 49.00)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_mtf_kitchen-intl-ship_sr_pg3_1?ie=UTF8&adId=A022863726U8CT6HRJH5D&qualifier=1650996673&id=993139042312979&widgetName=sp_mtf&url=%2FElinCube-Premium-Platter-Cooking-Bibimbap%2Fdp%2FB08R3DCF6V%2Fref%3Dsr_1_56_sspa%3Fcrid%3DVI05AD20QT0%26keywords%3Dkorean%2Bkitchen%26qid%3D1650996673%26s%3Dkitchen-intl-ship%26sprefix%3Dkorean%2Bkitchen%252Ckitchen-intl-ship%252C54%26sr%3D1-56-spons%26psc%3D1
p47 = Product.create!('name': 'ElinCube Premium Korean Stone Bowl with Lid & Platter, Clay Pot for Cooking Hot Pot Dolsot Bibimbap and Soup',
    'description': "- Our stone bowl(stone pot) is made of the highest quality Korean fine clay, and they are baked at a higher temperature, so they are more durable and can be used for a long time
    *- It has a sophisticated and luxurious shape by adding a modern touch to the traditional Korean design. Our stone bowl will make the dishes set on your table more delicious and stand out during your pleasant dinner time
    *- It can be used not only for Korean food, but also for various dishes. Add taste and style to your dishes. Keeps food warm during meals with loved ones around you and Bon appetit
    *- Enjoy delicious Korean food with our premium stone bowl. You can cook with this bowl to make a variety of Korean dishes such as Dolsot Bibimbap, Galbi jjim(Braised beef short ribs), Kimchi jjigae(Kimch stew), Spicy soft tofu stew, Fluffy hot steamed eggs, Bulgogi stew and also various countries cuisine
    *- Can be used on gas stoves, electric hot stoves, ovens, microwaves and dishwashers (Not for induction)",
    'department': kitchen.name,
    'delivery_days': rand(max_days) + 1,
    'price': 28.99)
# https://www.amazon.com/Excelife-86150-Folding-Wooden-Korean/dp/B0722TZ48M/ref=sr_1_73?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996706&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-73
p48 = Product.create!('name': 'Excelife 86150 Multi Folding Wooden Korean Tea Table M Size, Medium , Brown',
    'description': "- Beautiful Asian style designed multi functional folding wooden table, Made from kalopanax
    *- Multi functional table - to Eat, study always and use laptop
    *- Strong durability and safe round edge rectangle
    *- Light weight, foldable legs and portable design - easy to clean and Fold flat for storage",
    'department': kitchen.name,
    'delivery_days': rand(max_days) + 1,
    'price': 67.15)
# https://www.amazon.com/AGAINATURE-Kitchen-Reusable-Absorbing-Eco-Friendly/dp/B093KHRVDZ/ref=sr_1_81?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996706&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-81
p49 = Product.create!('name': 'AGAINATURE Cotton Kitchen Cloth 5 Pack, Korean Dish Cloth Called Sochang, Hand Towel, Steamer Cloth and Cheese Cloth, Natural Kitchen Cloth, Reusable Towel, Super Absorbing, Organic and Eco-Friendly',
    'description': "- 100% Cotton
    *- We only use fabrics made by a factory that has a history of over 100 years and all production processes are carried out in a korean traditional way. The fabric is unbleached and non-fluorescent. It is much more absorbent and dries faster than other cotton fabrics, so it is sanitary and contains less dust.
    *- Threads are coated with natural corn starch. The more you wash and boil, the denser and more absorbent it becomes. We recommend to wash and boil several times. If you skip this before your first use, it would not be absorbent enough because of its starched surface. You can get details of ‘HOW TO USE’ after the product description below.
    *- Each pack comes with 5 cotton cloths in different layers & sizes. You can use each as befits your purpose and in various ways like dishcloth, steamer cloth, cheese cloth or hand towel. The fabric is also great for needlepoint. You can embroider family name, flower, animal or character and make it your own special artwork.
    *- Our cotton cloths can get finally done only with your engagement and touch. As you destarch, refine and use continuously, it will become like your close kitchen friend rather than just one of the many household items. You can experience premium quality of classic natural cotton kitchen cloth.
    *- Using natural materials and giving worldwide customers the best experience is our brand’s mission. There are no any harsh chemicals or plastics in all of our products. Please visit our store and see other eco-friendly items. Hope you join the zero waste movement and enjoy a plastic free life!",
    'department': kitchen.name,
    'delivery_days': rand(max_days) + 1,
    'price': 14.99)
# https://www.amazon.com/Cuckoo-CR-0655F-Cooker-Liters-Quarts/dp/B01MQWFGKG/ref=sr_1_77?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996706&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-77
p50 = Product.create!('name': 'CUCKOO CR-0655F | 6-Cup (Uncooked) Micom Rice Cooker | 12 Menu Options: White Rice, Brown Rice & More, Nonstick Inner Pot, Designed in Korea | Red/White',
    'description': "- Unique 11 Menu Options: Enjoy popular menu options such as white (glutinous) rice, brown rice and porridge as well as versatile options such as steam and multi cook
    *- Ideal 6 Cup Capacity: The 6-cup (12 cups cooked) rice cooker provides the perfect serving amount for small gatherings or small to medium sized families
    *- Smart Micom Rice Cooker: Enjoy effortless cooking as the smart cooking algorithm is designed to automatically cook delicious rice every time!
    *- Customized Rice Cooking: Whether you enjoy sticky rice, soft rice, sweet rice, or savory rice, My Mode allows you to take control of your cooking with the 16 unique rice flavor and texture options
    *- Clean & Fresh: Keep your rice cooker clean and your rice tasting fresh with the removable nonstick inner pot, detachable inner lid, auto clean function, and excess water drainage dish",
    'department': kitchen.name,
    'delivery_days': rand(max_days) + 1,
    'price': 112.99)
# https://www.amazon.com/SASTYBALE-Japanese-Waitress-Painting-Gardening%EF%BC%88Gray%EF%BC%8CMedium%EF%BC%89/dp/B08FSTK6C6/ref=sr_1_86?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996706&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-86
p51 = Product.create!('name': 'SASTYBALE Japanese Korean Style Apron Cotton Cooking Apron with Both Sides Waist Ties for Kitchen Waitress Painting Gardening',
    'description': "- 腰带 closure
    *- 【Personalized Design】SASTYBALE cooking apron has a relaxed comfortable fit and comes in various sizes to fit most individuals ,two large pockets in front and ties on both sides design ,full front and back optimal coverage to protection from kitchen grease, spills and food stains.
    *- 【Healthy Material】This navy kitchen apron are made of high-quality Cotton ,that is lightweight and comfortable for you to wear,no harmful chemicals, safe for you and your family.
    *- 【Conveient Wearing】This side ties apron with pockets and conveient to wear,you can as wear as T-shirt,directly from your head set in to get rid of the neck pressure when you wearing for a long time.
    *- 【Easy Care】Machine washable, the color does not fade and shrinkage.do not bleach, tumble dry low and warm iron if needed.
    *- 【Multiple Uses】This cotton apron is suitable for many occasion,apart from cooking, it can keep your clothes from getting dirty your clothes while home crafts, art projects, cutting flowers, doing chores, DIY or painting.",
    'department': kitchen.name,
    'delivery_days': rand(max_days) + 1,
    'price': 19.99)
# https://www.amazon.com/imarku-Removable-Multifunctional-Stainless-Sharpening/dp/B088D82YDZ/ref=sr_1_88?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996706&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-88
p52 = Product.create!('name': 'Knife Set, imarku 16-Pieces Premium Kitchen Knife Set, German Stainless Steel Knife Set with Block and Knife Sharpener',
    'description': "- HIGH-QUALITY JAPANESE KNIFE SET: Knife set blades are made of German high-carbon stainless steel, Carefully hand-sharpened edge at 16 degrees per side for the ultimate in sharpness, hand-forged and mirror-polished by craftsman with over 25 years of experience that can avoid rust, stains and corrosion. Vacuum heat treatment makes the blade of the knife set hard to HRC56±2, so the blade is indestructible and won't break for a long time use.
    *- OUTSTANDING KITCHEN KNIFE SET: Handle are made of high-density pakkawood which has high hardness and beautiful grain. Handle will not crack after long-term use. After polishing process, handle arc perfectly fits the palm of the hand, providing optimal grip and comfort during use, without fatiguing your hand and guaranteed to be durable. Premium material of the kitchen knife sets reveals the luxurious identity of this knife that has been favored by many chefs and kitchen cooking enthusiasts.
    *- PATENTED REMOVABLE KNIFE SET - imarku's patented design adds a pull-away steak knife set. Wooden Block part is made of durable Walnut, knife seat is easier to insert and remove, easy to store and maintain. You can move the 6 steak knives from the kitchen to the dining area, detach freely is perfect for busy kitchens. That's why so many kitchen cooks choose imarku kitchen knife set with block.
    *- PRACTICAL KNIFE SET WITH BLOCK: imarku 16-piece stainless steel knives set for kitchen includes: 1 8in chef's knife, 1 bread knife, 1 slicing knife, 1 santoku knife, 1 6in chef's knife, 1 utility knife, 1 paring knife, 1 knife sharpener, 1 kitchen scissors, 1 wooden block, 6 steak knife, knives set includes every knife you need in the kitchen-A one-stop shop for all your needs.
    *- TRUSTWORTHY: imarku focuses on developing high-quality knives and is dedicated to enhance your cooking experience. We promise to cover our knife sets for life. If knives set is defective, we will provide free exchange or return for life. imarku knife set for kitchen with block is the perfect gift for Weddings, Birthdays, Housewarming, Thanksgiving, Christmas.",
    'department': kitchen.name,
    'delivery_days': rand(max_days) + 1,
    'price': 259.99)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_kitchen-intl-ship_sr_pg4_1?ie=UTF8&adId=A04626432Y0KUJOUNKLDV&qualifier=1650996706&id=8056718172970346&widgetName=sp_btf&url=%2FLavensi-Tamagoyaki-Japanese-Omelette-Non-stick%2Fdp%2FB098KYBY28%2Fref%3Dsr_1_94_sspa%3Fcrid%3DVI05AD20QT0%26keywords%3Dkorean%2Bkitchen%26qid%3D1650996706%26s%3Dkitchen-intl-ship%26sprefix%3Dkorean%2Bkitchen%252Ckitchen-intl-ship%252C54%26sr%3D1-94-spons%26psc%3D1
p53 = Product.create!('name': 'Lavensi - Japanese Tamagoyaki Pan, Egg Pan with Heat-Resistant & Cook-Safe Handle, Nonstick Frying Pan, Curved Edge, Scratch-Proof Bottom, Cooktop Safe, 5 x 7 inches',
    'description': "- Effortlessly Prep and Serve Omelettes - With our uniquely curved frying pan, you can easily roll and flip tamagoyaki. This Japanese omelette pan has a protective nonstick layer that keeps the egg batter from clinging to the pan.
    *- Cooks Food Evenly - No more unsavory, burnt or uncooked meals when you use our pan. Crafted with a smooth and flat bottom, this egg roll pan ensures even heat distribution. It’s also safe to use on gas, electric, and induction stoves.
    *- Safe and Convenient - Perfect your Tamagoyaki, pancakes, paninis and more with our cooking pan. Safe and convenient to use, this tamago pan is designed sleek and featherweight with a heat-resistant and cook-safe ergonomic handle.
    *- Sturdy with Food-Safe Coating - Coated with food-safe materials, this nonstick pan contains no cadmium, lead, or PFOA. Our Asian cookware also has the same quality as cast iron to withstand daily use in preparing a variety of dishes.
    *- Easy to Maintain and Store - Wash our square egg pan using a sponge or a soft scouring pad after use. Dry it off, hang this nonstick fry pan by the handle, then have it ready for your next cooking adventure.",
    'department': kitchen.name,
    'delivery_days': rand(max_days) + 1,
    'price': 36.99)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_mtf_kitchen-intl-ship_sr_pg5_1?ie=UTF8&adId=A01510603EIXORTNPLW09&qualifier=1650996783&id=7561152989686588&widgetName=sp_mtf&url=%2FSEAAN-Portable-Electric-Non-stick-Temperature%2Fdp%2FB08VJ52XWV%2Fref%3Dsr_1_103_sspa%3Fcrid%3DVI05AD20QT0%26keywords%3Dkorean%2Bkitchen%26qid%3D1650996783%26s%3Dkitchen-intl-ship%26sprefix%3Dkorean%2Bkitchen%252Ckitchen-intl-ship%252C54%26sr%3D1-103-spons%26psc%3D1
p54 = Product.create!('name': 'SEAAN Portable Electric Grill Hot Pot 2 in 1 BBQ Shabu Pot Baking Tray Combo Non-stick Pan Separate Temperature Control Easy to Clean (golden) US Stock',
    'description': "- 【2 in 1 DESIGN】The Smokeless BBQ and Hot Pot is large capacity, suitable for 2-10 people. Great for grilling, baking, slow cooking, steaming, simmering and serving. It is very practical to use.
    *- 【NON-STICK AND HEATPROOF 】The Frying Cook Grill is Heat-resistant, corrosion-resistant and non-stick BBQ griddle hot plate with the heat proof handle, prevent your hands from hurting, food grade material that is safe and non-toxic durable for you to use.
    *- 【2200W HIGH POWER,FAST HEATING】High-power heat pipe, sealed embedded design, reduce heat loss, heat faster and more uniform to improve heat efficiency, food heat faster.
    *-  【SEPERATE TEMPERATURE CONTROL】The most difficult cooking skill in the barbecue is the control of the fire. According to different ingredients, different temperatures can be selected.
    *- 【Split and Simpler Cleaning】 The hot pot adopts a separate design, which can be easily removed and cleaned/placed to improve cleaning efficiency and make it more user-friendly.",
    'department': kitchen.name,
    'delivery_days': rand(max_days) + 1,
    'price': 115.99)

# Attire
# https://www.amazon.com/YESNO-Cropped-Bloomers-Elastic-Pockets/dp/B07PM2ZLYL/ref=sr_1_1?keywords=Korean+Clothes&qid=1650997269&sr=8-1
p55 = Product.create!('name': 'YESNO Women Casual Loose Cropped Pants Denim Bloomers Elastic Waist with Pockets PJD',
    'description': "- 100% Cotton
    *- Zipper closure
    *- Features: Bloomers; Elastic Waist; Side Pockets; Casual Loose
    *- Occasion: Holiday; Loose Casual Wearing for home; Shopping
    *- Please refer to the Size Chart in the Product Description below or the 5th Image before ordering
    *- Hand Wash Cold; Soft Machine Washing; Line Dry; Do not Soak; Classification of Washing; Low Temperature if necessary",
    'department': attire.name,
    'delivery_days': rand(max_days) + 1,
    'price': 44.99)
# https://www.amazon.com/Womens-Casual-Jumpsuits-Overalls-Rompers/dp/B07CNWQD7S/ref=sr_1_2?keywords=Korean+Clothes&qid=1650997269&sr=8-2
p56 = Product.create!('name': 'Aedvoouer Women`s Baggy Plus Size Overalls Cotton Linen Jumpsuits Wide Leg Harem Pants Casual Rompers',
    'description': "- Machine Wash
    *- PREMIUM QUALITY - These overalls are made of premium soft fabric, give you a comfortable and perfect feeling when you put them on. Durable fabric and stitching so you don't have to worry about them ripping
    *- SIZE CHOOSE- Our overalls come in 6 size for you choose. There is a picture of our size chart on the left, Pls check our size chart on the left before purchase. Based on reviews and customer messages, we recommend that orders of sizes from L to 3XL can be one size larger than usual
    *- STYLISH DESIGN - Our overalls are simple and classy which is perfect for any occasions! Loose, Baggy Fit,Plus Size,Wide Legs,Long Pants Jumpsuits Romper,you can also roll up the bottom of leg to find another feeling
    *- MUST FOR EVERY WOMAN - Wear our jumpsuits to show off some of your classic look! These are perfect for any occasions such as school,parks, parties, dates, movies,it fits everywhere you go! Also perfect for PREGNANT WOMEN
    *- GARMENT CARE - Hand wash or Machine Wash in cold water, gentle cycle. Hang to dry to avoid shrinkage",
    'department': attire.name,
    'delivery_days': rand(max_days) + 1,
    'price': 26.99)
# https://www.amazon.com/Mfacl-Hoodies-Sweatshirt-Clothes-Two-Piece/dp/B09F73133L/ref=sr_1_3?keywords=Korean+Clothes&qid=1650997269&sr=8-3
p57 = Product.create!('name': 'Mfacl Cute Hoodies Sweatshirt Womens Clothes Large Size Women`s Loose Korean Version Fake Two-Piece Sweater Women`s Top (Color : Black, Size : Large)',
    'description': "- Material: Soft and comfortable sweatshirt fabric. Our sweatshirt is lightweight, soft and breathable. Suitable for spring, fall and winter that is warm and cozy.
    *- Feature: Womens sweatshirt, long sleeve, loose fit, solid color, color striped design, casual style, basic, simple, fashion. Loose fit, Cute and Casual; Great for casual wear, outdoor sports, school, travel, date or work.
    *- Easy Fashion Matching: Lightweight pullover sweatshirt match well with jeans, leggings, heels or boots, will make you look fabulous while staying comfortable.
    *- Occasion: This pullover tops suitable for your daily wear, outdoor activities, shopping, dates and any other occasions in spring, fall and winter.
    *- Size: Please select the appropriate size according to the size chart in our product picture. If you have any questions about the size and product, please contact us and we will help you solve the problem in time.",
    'department': attire.name,
    'delivery_days': rand(max_days) + 1,
    'price': 23.59)
# https://www.amazon.com/JLFFYJ-Aesthetic-Oversized-Streetwear-Tops-Beige/dp/B09BDV9576/ref=sr_1_4?keywords=Korean+Clothes&qid=1650997269&sr=8-4
p58 = Product.create!('name': 'JLFFYJ Harajuku Aesthetic Bear Anime Hoodie Women Korean Kawaii Crewneck Long Sleeve Oversized Streetwear Fall Winter Clothes Tops-Beige||S',
    'description': "- Cotton,Fleece
    *- The ultra-soft, medium-weight fleece made from a cotton mix has a brushed inside and provides for warm wearing comfort.
    *- Features: long sleeve hoodie, ribbed cuff, pullover sweatshirt, cute design hoodie, hooded zippered sweatshirt for women / teenage girls
    *- Occasions: The cute hoodie is ideal for daytime, household, school, party, Halloween, Christmas, travel and street photography
    *- Please allow for a 1-3 cm margin of error due to manual measurement. Wash with water that does not exceed 30°C and hang to dry. Hand or gentle machine wash in cold water / do not bleach / line dry.
    *- If you have any problems, please feel free to contact us. We promise to do our best to serve you.",
    'department': attire.name,
    'delivery_days': rand(max_days) + 1,
    'price': 35.00)
# https://www.amazon.com/Womens-Striped-Button-Casual-Sports/dp/B093KCLR2S/ref=sr_1_5?keywords=Korean+Clothes&qid=1650997269&sr=8-5
p59 = Product.create!('name': 'Women`s High-Waisted Striped Snap Button Track Pants Comfortable and Versatile Elastic Waist Seal',
    'description': "- Drawstring closure
    *- Features: high waist elastic waist seal design, side stripes, with two pockets, binding feet, snaps Snap button.We use breathable and elastic fabrics to make you more comfortable during wearing. The waist is elasticated with a drawstring, and the elasticity can be adjusted freely and comfortably.
    *- Our unique buckle design allows you to stretch your limbs better during exercise without restriction. While being comfortable, it also has a sense of fashion and is more individual.
    *- The perfect match with any tops, shirts, sweatshirts will make you more charming! Elastic-bottom design, creates a leg lengthening illusion instantly, stylish but comfortable.
    *- Occasions: Great for yoga,sports, fitness, workout, work,office, daily-wear, jogging, climbing, party, club, riding bike and motorcycle, travel, vacation.
    *- Please take a measurement and consult our size chart to choose the size that suits you best. If you have any questions, please contact us.",
    'department': attire.name,
    'delivery_days': rand(max_days) + 1,
    'price': 36.99)
# https://www.amazon.com/Zzple-Clothes-Sweater-Version-Fashion/dp/B09FQ25C2K/ref=sr_1_6?keywords=Korean+Clothes&qid=1650997269&sr=8-6
p60 = Product.create!('name': 'Zzple Kawaii Hoodie Womens Clothes Women`s Hoodie Sweater Loose Korean Version Thin Long Sleeve Fashion Outer Coat (Color : Black, Size : Medium)',
    'description': "- Material: Soft and comfortable sweatshirt fabric. Our sweatshirt is lightweight, soft and breathable. Suitable for spring, fall and winter that is warm and cozy.
    *- Feature: Womens sweatshirt, long sleeve, loose fit, solid color, color striped design, casual style, basic, simple, fashion. Loose fit, Cute and Casual; Great for casual wear, outdoor sports, school, travel, date or work.
    *- Easy Fashion Matching: Lightweight pullover sweatshirt match well with jeans, leggings, heels or boots, will make you look fabulous while staying comfortable.
    *- Occasion: This pullover tops suitable for your daily wear, outdoor activities, shopping, dates and any other occasions in spring, fall and winter.
    *- Size: Please select the appropriate size according to the size chart in our product picture. If you have any questions about the size and product, please contact us and we will help you solve the problem in time.",
    'department': attire.name,
    'delivery_days': rand(max_days) + 1,
    'price': 30.38)
# https://www.amazon.com/Winter-Clothes-Hoodies-Pullover-Apricot/dp/B09CTJM53D/ref=sr_1_7?keywords=Korean+Clothes&qid=1650997269&sr=8-7
p61 = Product.create!('name': 'Fall Winter Clothes Women Plaid Hoodies Fake Two Pieces Fleece Turtle Neck Korean Pullover',
    'description': "- Fleece
    *- Machine Wash
    *- The fabric is soft and comfortable, not deformed, washable, machine washable, and durable.
    *- Suitable for any body type. It can be given to sisters, girlfriends, wives, friends, family, relatives, etc. This will be a good gift.
    *- It is Asian sizes. Please choose one or two sizes bigger than usual. Please refer to the size chart before buying. If you have any questions, please contact us within 24 hours.
    *- Suitable for any occasion, it can be worn daily, and can also be used for home, work, school, dating, anniversaries, parties, travel, walking, sports, exercise, activities, outings and other occasions.
    *- Casual and fashionable, easy to match with skirts, casual pants, trousers, shorts, leggings, etc., indispensable in autumn and winter.",
    'department': attire.name,
    'delivery_days': rand(max_days) + 1,
    'price': 36.99)
# https://www.amazon.com/Pullover-Clothes-Oversized-Sweatshirt-Harajuku/dp/B094Y5LJYR/ref=sr_1_9?keywords=Korean+Clothes&qid=1650997269&sr=8-9
p62 = Product.create!('name': 'Spring Autumn O-Neck Pullover Women Korean Loose Clothes Oversized Sweatshirt Vintage Oversized Harajuku Korean Hoodie',
    'description': "- 100% Polyester
    *- Material: 100% polyester fabric, breathable and soft, very comfortable to wear.
    *- Design: This pullover, super fire letter printing, Korean ins Harajuku style design, street hip-hop style, loose fit, fashionable Hip Pop style, ultra-fashionable hoodie suitable for children, teenagers, couples, and families.
    *- Occasion: It is very suitable for daily clothing in spring, autumn and winter, suitable for shopping, parties, travel, nightclubs, bars, photography, dinners, travel, etc.
    *- The perfect gift: a unique and stylish design. This casual pullover is perfect for everyday wear and is the perfect birthday gift or holiday gift.
    *- Service: 100% after-sales service guarantee, if you have any questions about our products, please contact us in time, we will provide you with a satisfactory solution.",
    'department': attire.name,
    'delivery_days': rand(max_days) + 1,
    'price': 15.99)
# https://www.amazon.com/Womens-Sleeve-Japanese-Cardigan-OneSize/dp/B07FSWQC28/ref=sr_1_23?keywords=Korean+Clothes&qid=1650997269&sr=8-23
p63 = Product.create!('name': 'Women`s 3/4 Sleeve Japanese Shawl Kimono Cardigan Tops Cover up OneSize US S-XL',
    'description': "- 100% Polyester
    *- Machine Wash
    *- From Japanese pattern kimono design and style
    *- Retro, elegant, traditional Japanese style, open style waterfall, Light quality, Loose Fit
    *- Occasion / Season: Summer, beach, pool, bathroom, pajamas,casual
    *- Garment Care:Machine wash,Package Includes:1 x Kimono
    *- ONE SIZE(US S-L) :Length:28.3 in,Shoulder:18.0 in,Bust:46.4 in,Sleeve:11.0 in",
    'department': attire.name,
    'delivery_days': rand(max_days) + 1,
    'price': 25.98)
# https://www.amazon.com/Wrenpies-Skateboarding-Sweatshirt-Pullover-Aesthetic/dp/B09FF34PX4/ref=sr_1_22?keywords=Korean+Clothes&qid=1650997269&sr=8-22
p64 = Product.create!('name': 'Wrenpies Frog Skateboarding Casual Sweatshirt Women`s Pullover Long Sleeve Turn Down Collar with Pocket Tops for Teen Girls',
    'description': "- Polyester,Cotton
    *- Hand Wash Only
    *- [Materia] :35% Cotton + 65% Polyester. It is made of high quality materials, polyester and cotton. Polyester has excellent wrinkle resistance, elasticity and dimensional stability. It is durable and wrinkle-resistant without ironing. It is not afraid of mold or insects.Soft and No Harm To Women Girls Tender Skin.
    *- [Size] :The size of the skateboard frog sweatshirt is: M L XL XXL Asian Size. If you like loose, we recommend choosing 1 or 2 large.Please check the size chart before placing the order, because the size chart is manually measured and there is a difference of 2-3cm.
    *- [Features] :Skateboarding frog long sleeve hoodie, kawaii clothing aesthetic, frog hoodies for teen girls, Cartoon Hoodies for Women,plus size fashion sweatshirt with collar,cute cotton pullover frog on skateboard sweatshirt,oversized drop shoulder sweatshirt graphic,turn-down collar sweatshirt,fit wear in autumn winter and spring season, best festival gifts for friends or family,and it is also the perfect gift for yourself!
    *- [Occasion] :This skateboarding frog hoodie long sleeve cotton pullover is suitable for all occasions, prefer for Home, Daily, School, Lounge, Work, Date, Casual, Outings, Office. You can match this softie aesthetic skateboarding frog sweatshirt with jeans/skirt shorts/leggings /deni shorts/sweatpants.All-match clothing that suits you.
    *- [Color Disclaimer] :Green,Pink,Black,Blue,Yellow,Apricot.The color of the cute frog on skateboard hoodie may be affected by the light shooting, Please allow slight deviation for the color! Machine wash or hand wash, hand wash can make the clothes last longer. Do not bleach .If you have any questions about our kawaii frog hoodie with pockets, please feel free to contact us, our enthusiastic customer service will reply within 24 hours and provide you with quality service.",
    'department': attire.name,
    'delivery_days': rand(max_days) + 1,
    'price': 23.68)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_mtf_aps_sr_pg1_1?ie=UTF8&adId=A0923408TY1YZ2JFDYP5&url=%2FUQJE-Women-Loose-Boyfriends-Trousers%2Fdp%2FB09Q37ZCDP%2Fref%3Dsr_1_27_sspa%3Fkeywords%3DKorean%2BClothes%26qid%3D1650997269%26sr%3D8-27-spons%26psc%3D1&qualifier=1650997269&id=3010713106466771&widgetName=sp_mtf
p65 = Product.create!('name': 'UQJE Women`s Baggy Cotton Denim Wide Leg Pants Pull-on Jeans Comfy Elastic Waist Drawstring Trousers with Pockets',
    'description': "- Denim
    *- Imported
    *- Drawstring closure
    *- Machine Wash
    *- 【PREMIUM QUALITY】 Made of premium cotton denim fabric. Soft, Durable and Comfortable.
    *- 【STYLISH DESIGN】Casual loose, high waist, elastic waist with drawstring. Two side pockets, can put your card & keys.
    *- 【MATCH】 Distressed relaxed wide leg jeans easy to match t-shirt, sweatshirt, loose tops and boots for a casual look.
    *- 【NOTICE】Please refer to our size chart in the picture then compare with your body size to get the right fit.
    *- 【OCCASIONS】 Fashion baggy plus size trousers fits all seasons. Perfect for your daily wear, home, beach party, holiday, party, streetwear, outdoor, travel and any time.",
    'department': attire.name,
    'delivery_days': rand(max_days) + 1,
    'price': 37.99)
# https://www.amazon.com/BERING-Womens-Cotton-Hidden-Loafers/dp/B07PS5DQC9/ref=sr_1_37?keywords=Korean+Clothes&qid=1650997269&sr=8-37
p66 = Product.create!('name': 'BERING Women`s No Show Socks 6-9 Pairs Low Cut Ankle for Sneaker Slip On Boot Ballet',
    'description': "- 80% Cotton, 15% Polyester, 5% Spandex
    *- Imported
    *- Machine Wash
    *- Soft, lightweight, durable, and fit perfectly. Made of advanced stretch cotton blended material, the optimum softness and thickness, breathable fabric helps keep your feet dry and comfortable all day long.
    *- The Bering women's no show socks have three anti-slip silicone grippers on the inside of the heel to help the socks stay in place, they don't slip off your heel when you wear them.
    *- Reinforced toe and heel for durability, better stretch recovery for long-lasting, withstand multiple washing, do not shrink up into twisted balls that lose shape.
    *- Low-cut ankle style can be hidden in slip-ons, fashion sneakers, running shoes, walking shoes, tennis shoes, and everyday low-top casual shoes.
    *- Available in a variety of colors and two regular sizes, medium (W 6-9/M 5-8), large (W 10-13/M 9-12). Worry-free after-sales service, shopping with confidence!",
    'department': attire.name,
    'delivery_days': rand(max_days) + 1,
    'price': 18.99)
# https://www.amazon.com/Cosfun-Two-Piece-Fleece-Detachable-mp006068/dp/B08QLY7HNR/ref=sr_1_38?keywords=Korean+Clothes&qid=1650997269&sr=8-38
p67 = Product.create!('name': 'Cosfun Winter Bear Hoodie Fake Two-Piece Fleece Hooded with Detachable Bear Bag C00554',
    'description': "- 51% Cotton, 49% Polyester
    *- Including: only hoodie(detachable bag)
    *- Materials: 51%cotton, 49%polyester
    *- Soft and Comfortable, Relaxed Fit, Front Zipper Detachable Bag
    *- US Size S: Chest 108cm, Sleeve 49 cm, Length 69 cm; US Size M: Chest 113 cm, Sleeve 51 cm, Length 73 cm; US Size L: Chest 118 cm.
    *- Note: The product photos are all taken in kind, and the actual product is the same as the product picture shown. Due to the different lighting and display screens, there may be slight color difference.
    *- Perfect for leisure, school, work, dating and easy to match with any casual pants or skirt",
    'department': attire.name,
    'delivery_days': rand(max_days) + 1,
    'price': 37.99)
# https://www.amazon.com/Byvheh-Harajuku-Sweatpants-Trousers-Joggers/dp/B092MJG9LY/ref=sr_1_39?keywords=Korean+Clothes&qid=1650997269&sr=8-39
p68 = Product.create!('name': 'Women`s Cargo Pants Joggers Pants with Chain Loose Fit Kpop Black y2k Pants Baggy Streetwear Cargos Aesthetic Pants Gothic',
    'description': "- egirl pants aesthetic emo pants for women goth pants for women goth pants aesthetic pants gothic pants for women gothic pants for women plus size
    *- Lace Up closure
    *- Machine Wash
    *- [Please note!!!]Based on feedback from many customers, we have updated our sizes. Please refer to the new size chart in our picture to confirm the right size before ordering (not amazon's), thank you very much
    *- [Garment Care!!!]Hand wash in cold water or machine wash in laundry bag, please don't soak the Dress in water for a long time, don't use chlorine bleach to wash, do not wash in hot water, do not bleach, do not dry
    *- [Our Response]We've seen feedback that the zipper comes off after a few uses. We have contacted the factory to request a replacement zipper with better quality. In order to prolong its life, please put the trousers in the laundry bag and machine wash. There is also feedback that the chain position is not very comfortable. These decorations are free to disassemble. You can even remove the chain and hang up any other decorations you like to make it your very own, one-of-a-kind trousers
    *- lace up leggings for women lace front leggings suede lace up leggings laced pants sexy gothic pants leather side leggings black lace up hem leggings plus size lace up leggings for women
    *- side lace leggings for women side lace up jeans for women black lace up leggings laced jeans lace up leggings side lace up leggings punk clothing for women black suede lace pants",
    'department': attire.name,
    'delivery_days': rand(max_days) + 1,
    'price': 30.99)
# https://www.amazon.com/Sweatshirt-Harajuku-Crewneck-Aesthetic-8253black/dp/B09GKCVLP7/ref=sr_1_41?keywords=Korean+Clothes&qid=1650997269&sr=8-41
p69 = Product.create!('name': 'Women`s Sweatshirt Goth Hoodies Harajuku Crewneck Aesthetic Gothic Clothes Korean Fashion Pullover Tops',
    'description': "- Hand Wash Only
    *- Suitable for Casual, Work, Date, School, Sports, Vacation, Street wear or casual everyday wear, it's a great gift idea for christmas or holidays
    *- Casual style, Relaxed Fit; Pullover Hoodie Sweater for women, ladies, juniors, teen girls.
    *- Garment Care: Machine/Hand wash, hang to dry in shade, prohibit bleaching.
    *- We Strive to Provide you Highest Quality Products and Best Service, Please Feel Free to contact us for any defective items you have purchased from our store or the hoodie has SIZE problem",
    'department': attire.name,
    'delivery_days': rand(max_days) + 1,
    'price': 29.50)
# https://www.amazon.com/Harajuku-Kawaii-Hoodie-Sweater-Clothes/dp/B09LVTRW9G/ref=sr_1_44?keywords=Korean+Clothes&qid=1650997269&sr=8-44
p70 = Product.create!('name': 'NC Harajuku Kawaii Sweet Hoodie Fruit Print Women`s Loose Thin Zipper Sweater Girl Cute Pink Plus Size Clothes',
    'description': "- Fabric: Cotton + polyester, soft and skin-friendly, very comfortable to wear
    *- Collar type: Hooded
    *- Style: Japanese Harajuku Kawaii fruit print zipper hoodie, Korean casual Harajuku sweet jacket. Street fashion beautiful hoodie, soft and comfortable, simple and versatile.
    *- Design: Kawaii fruit print design, very fresh and sweet and cute hoodie, Korean version of simple Harajuku kawaii sweet style, Harajuku casual fashion fresh and sweet beauty hoodie.
    *- Matching: can be matched with jeans, casual pants, skirts, casual shoes, or as casual home wear",
    'department': attire.name,
    'delivery_days': rand(max_days) + 1,
    'price': 22.00)
# https://www.amazon.com/ZAFUL-Knitted-Sweater-Crewneck-Pullover/dp/B07HN2V9YV/ref=sr_1_45?keywords=Korean+Clothes&qid=1650997269&sr=8-45
p71 = Product.create!('name': 'ZAFUL Women`s Loose Sweater, Crew Neck Lantern Sleeve Casual Pullover Oversized Knitted Jumper Tops',
    'description': "- Size information:One size(US 8-12)--Bust 130cm/51.2 in--Length 60cm/23.6 in--Shoulder Width 56cm/22 in--Sleeve Length 50cm/19.7 in Please refer to the size information before purchasing or contact us directly if any question.Please allow 1-3cm differs due to manual measurement,thanks
    *- Material:Acrylic+Cotton+Polyester,Skin friendly fabric,comfy ,soft and warm
    *- Feature:Crewneck,Lantern sleeve,a letter badge patched design,with multiple color optional
    *- Occasion:Perfect for outdoor, indoor, shopping, working,business, casual, ball, prom, wedding, party, club, festival, travelling, jogging, etc
    *- Easily to match with jeans, leggings or skirts",
    'department': attire.name,
    'delivery_days': rand(max_days) + 1,
    'price': 27.99)
# https://www.amazon.com/SOLY-HUX-Colorblock-Embroidery-Drawstring/dp/B097PVY6CW/ref=sr_1_48?keywords=Korean+Clothes&qid=1650997269&sr=8-48
p72 = Product.create!('name': 'SOLY HUX Men`s Colorblock Letter Embroidery Long Sleeve Drawstring Hoodie Sweatshirt',
    'description': "- Soft Fabric
    *- Pull On closure
    *- Casual hooded pullover sweatshirt
    *- Fabric: Fabric is soft and comfortable, some stretch
    *- Feature: Letter, embroidery, drawstring, long sleeve, drop shoulder, pullovers, fashionable
    *- Size recommendation: Please refer to size chart which we provide in our photos (not amazon's)
    *- Suitable occasions: Suit for casual wear, vacation, school, daily life and outgoing, fit for spring or fall",
    'department': attire.name,
    'delivery_days': rand(max_days) + 1,
    'price': 32.99)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_aps_sr_pg1_1?ie=UTF8&adId=A07726261MEMQWEC8YBDS&url=%2FZPAYFSDS-Womens-Hoodies-Pullover-Sweatshirts%2Fdp%2FB081LL68FC%2Fref%3Dsr_1_57_sspa%3Fkeywords%3DKorean%2BClothes%26qid%3D1650997269%26sr%3D8-57-spons%26psc%3D1&qualifier=1650997269&id=3010713106466771&widgetName=sp_btf
p73 = Product.create!('name': 'ZPAYFSDS Women`s Cute Cat Ear Button Fleece Warm Hoodies Pullover Coat Sweatshirts Blouse 4Color',
    'description': "- Machine Wash
    *- Material:Polyester, feel soft and comfortable
    *- Style:Simple, stylish, long sleeves. Casual autumn blouse with a stylish solid color design. Suitable for teenagers, travel, work, family, school, dating.
    *- Been improved to be more thick and warm, sanded, soft and waxy, elasticity.
    *- This goes well with all your jeans, leggings, it's a great gift idea for christmas,Halloween and other holidays
    *- Note:Machine wash or hand wash cold water,dry clean,Do not bleach;Package included:1x women sweatshirt",
    'department': attire.name,
    'delivery_days': rand(max_days) + 1,
    'price': 25.99)

# Garden
# https://www.amazon.com/HomeTheWay-weeding-farming-Daejanggan-Hand-made/dp/B077S7HCN7/ref=sr_1_2?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997517&sprefix=korean+garden%2Caps%2C82&sr=8-2
# p74 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/YOUNGJU-Premium-Quality-Gardening-Blacksmith/dp/B08FH9ZYMT/ref=sr_1_6?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997517&sprefix=korean+garden%2Caps%2C82&sr=8-6
# p75 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/NY-FASHIONCITY-Baekdu-Korean-Carbon/dp/B09D7WK3GQ/ref=sr_1_16?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997517&sprefix=korean+garden%2Caps%2C82&sr=8-16
# p76 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Gardening-Attached-Farming-Gardener-Agriculture/dp/B07YBPW4S3/ref=sr_1_21?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997517&sprefix=korean+garden%2Caps%2C82&sr=8-21
# p77 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_mtf_aps_sr_pg1_1?ie=UTF8&adId=A0842589K3X3XG8YF82I&qualifier=1650997517&id=6635021737743976&widgetName=sp_mtf&url=%2Flabworkauto-Foldable-Kneeler-Portable-Folding%2Fdp%2FB086QV1W2N%2Fref%3Dsr_1_27_sspa%3Fcrid%3DZW85KZ6DSGIV%26keywords%3DKorean%2Bgarden%26qid%3D1650997517%26sprefix%3Dkorean%2Bgarden%252Caps%252C82%26sr%3D8-27-spons%26psc%3D1
# p78 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/SUPIA-Korean-Gardening-Excellent-Vegetable/dp/B08975KY1Q/ref=sr_1_31?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997517&sprefix=korean+garden%2Caps%2C82&sr=8-31
# p79 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/YoungJu-DaeJangGan-Handmade-Weeding-Blacksmith/dp/B09WW15PTK/ref=sr_1_29?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997517&sprefix=korean+garden%2Caps%2C82&sr=8-29
# p80 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/JADAM-Organic-PEST-DISEASE-CONTROL/dp/8989220475/ref=sr_1_33?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997517&sprefix=korean+garden%2Caps%2C82&sr=8-33
# p81 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Design-Toscano-Temple-Polyresin-Verdigris/dp/B002ZPJC7K/ref=sr_1_42?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997517&sprefix=korean+garden%2Caps%2C82&sr=8-42
# p82 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Prohoe-Garden-Cultivator-Backyard-Gardening/dp/B07L4976CJ/ref=sr_1_44?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997517&sprefix=korean+garden%2Caps%2C82&sr=8-44
# p83 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Individual-Michihili-Copenhagen-Gardeners-Basics/dp/B092GBVP2F/ref=sr_1_46?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997517&sprefix=korean+garden%2Caps%2C82&sr=8-46
# p84 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Nacome-Lantern-Landscape-Ornament-Polyresin/dp/B091ZFGSR8/ref=sr_1_43?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997517&sprefix=korean+garden%2Caps%2C82&sr=8-43
# p85 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/BlueArrowExpress-Kana-Hoe-217-Japanese/dp/B01B2MENPC/ref=sr_1_48?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997517&sprefix=korean+garden%2Caps%2C82&sr=8-48
# p86 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_aps_sr_pg1_1?ie=UTF8&adId=A02285032M0EER62FX2BN&qualifier=1650997517&id=6635021737743976&widgetName=sp_btf&url=%2FUpBlend-Outdoors-Wind-Chime-Hand-Tuned%2Fdp%2FB0888RXQ7D%2Fref%3Dsr_1_56_sspa%3Fcrid%3DZW85KZ6DSGIV%26keywords%3DKorean%2Bgarden%26qid%3D1650997517%26sprefix%3Dkorean%2Bgarden%252Caps%252C82%26sr%3D8-56-spons%26psc%3D1
# p87 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Nisaku-NJP650-Hori-Hori-Authentic-Stainless/dp/B0007WFG2I/ref=sr_1_85?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997668&sprefix=korean+garden%2Caps%2C82&sr=8-85
# p88 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/LANDUM-Figurine-Ornaments-Miniature-Dollhouse/dp/B07FCQFRPC/ref=sr_1_87?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997668&sprefix=korean+garden%2Caps%2C82&sr=8-87
# p89 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/JHP-Sculpture-Hand-Painted-Greenman-Decoration/dp/B0785KCCGN/ref=sr_1_98?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997717&sprefix=korean+garden%2Caps%2C82&sr=8-98
# p90 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/COOLJOB-Garden-Gloves-Gardening-Working/dp/B07MLWK6MS/ref=sr_1_141?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997717&sprefix=korean+garden%2Caps%2C82&sr=8-141
# p91 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Magid-Glove-Safety-Professional-BE195TM/dp/B00EONLNA0/ref=sr_1_182?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997759&sprefix=korean+garden%2Caps%2C82&sr=8-182
# p92 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )

# Toys
# https://www.amazon.com/TOYTRON-Futurebook-Pororopen-Developing-Beginning/dp/B083962K76/ref=sr_1_2?crid=1RZH7UU9PD0JT&keywords=Korean+toys&qid=1650997823&sprefix=korean+toys%2Caps%2C92&sr=8-2
# p93 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Alphabet-Magnetic-Letters-Learning-Education/dp/B089RXKJVJ/ref=sr_1_3?crid=1RZH7UU9PD0JT&keywords=Korean+toys&qid=1650997823&sprefix=korean+toys%2Caps%2C92&sr=8-3
# p94 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Korean-Flower-Hwatu-Hand-drawn-illustration/dp/B072MWPB4L/ref=sxin_14_ac_d_bv?ac_md=0-0-QmVzdCBWYWx1ZQ%3D%3D-ac_d_bv_bv_bv&crid=1RZH7UU9PD0JT&cv_ct_cx=Korean+toys&keywords=Korean+toys&pd_rd_i=B072MWPB4L&pd_rd_r=8b8467a8-6d72-463f-ba12-94f4b08c11d8&pd_rd_w=qtF0H&pd_rd_wg=rqEZk&pf_rd_p=e11d91a6-f987-4c88-b86e-53e4b6a75723&pf_rd_r=5CYDSYW2N4BVTN06ADEF&psc=1&qid=1650997823&sprefix=korean+toys%2Caps%2C92&sr=1-1-270ce31b-afa8-499f-878b-3bb461a9a5a6
# p95 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Dr-Moku-Hangul-Flashcards-Mnemonics/dp/B092JNN6NK/ref=sxin_14_ac_d_bv?ac_md=2-1-VW5kZXIgJDI1-ac_d_bv_bv_bv&crid=1RZH7UU9PD0JT&cv_ct_cx=Korean+toys&keywords=Korean+toys&pd_rd_i=B092JNN6NK&pd_rd_r=8b8467a8-6d72-463f-ba12-94f4b08c11d8&pd_rd_w=qtF0H&pd_rd_wg=rqEZk&pf_rd_p=e11d91a6-f987-4c88-b86e-53e4b6a75723&pf_rd_r=5CYDSYW2N4BVTN06ADEF&psc=1&qid=1650997823&sprefix=korean+toys%2Caps%2C92&sr=1-2-270ce31b-afa8-499f-878b-3bb461a9a5a6
# p96 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Random-Korean-Traditional-Gonggi-Pebbles/dp/B096L2PQYG/ref=sr_1_7?crid=1RZH7UU9PD0JT&keywords=Korean+toys&qid=1650997823&sprefix=korean+toys%2Caps%2C92&sr=8-7
# p97 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/PlaySet-Suitable-Role-Playing-Business-Korean/dp/B09LJJ71D6/ref=sr_1_15?crid=1RZH7UU9PD0JT&keywords=Korean+toys&qid=1650997823&sprefix=korean+toys%2Caps%2C92&sr=8-15
# p98 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/BBL-YUTNORI-Board-Game-Traditional/dp/B08BX3MXY8/ref=sr_1_2?keywords=korean+board+games&qid=1650998127&sprefix=korean+boar%2Caps%2C86&sr=8-2https://www.amazon.com/Uncle-Goose-Korean-Blocks-Made/dp/B01CRLHT4Y/ref=sr_1_14?crid=1RZH7UU9PD0JT&keywords=Korean+toys&qid=1650997823&sprefix=korean+toys%2Caps%2C92&sr=8-14
# p99 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Chocolate-Pillow-Stuffed-Animal-Creative/dp/B08QMVRS4X/ref=sr_1_21?crid=1RZH7UU9PD0JT&keywords=Korean+toys&qid=1650997823&sprefix=korean+toys%2Caps%2C92&sr=8-21
# p100 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/ECTY-Stuffed-Plush-Sitting-Height/dp/B01N3Y55J8/ref=sr_1_38?crid=1RZH7UU9PD0JT&keywords=Korean+toys&qid=1650997823&sprefix=korean+toys%2Caps%2C92&sr=8-38
# p101 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/LENITH-Dalgona-Korean-Cookies-Stainless/dp/B0888THQKM/ref=sr_1_48?crid=1RZH7UU9PD0JT&keywords=Korean+toys&qid=1650997823&sprefix=korean+toys%2Caps%2C92&sr=8-48
# p102 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Youngchang-Traditional-Musical-Instruments-YS-VN/dp/B06WVJXD35/ref=sr_1_57?crid=1RZH7UU9PD0JT&keywords=Korean+toys&qid=1650997995&sprefix=korean+toys%2Caps%2C92&sr=8-57
# p103 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/YIPINJIA-Poppers-Crossbody-Shoulder-Circular/dp/B09JLKSPBY/ref=sr_1_82?crid=1RZH7UU9PD0JT&keywords=Korean+toys&qid=1650997995&sprefix=korean+toys%2Caps%2C92&sr=8-82
# p104 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/SHASHIBO-Shifting-Geometric-Transforming-Magnetic/dp/B08FPGR7V7/ref=sr_1_16?crid=34IWO13OW9LB8&keywords=korean+toys+for+teens&qid=1650998052&sprefix=korean+toys+for+teens%2Caps%2C58&sr=8-16
# p105 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/LENITH-YUTNORI-Korean-Yunnori-Strategy/dp/B092743WPH/ref=sr_1_3?keywords=korean+board+games&qid=1650998127&sprefix=korean+boar%2Caps%2C86&sr=8-3
# p106 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Korean-English-Language-Board-Players/dp/B09Q8FFKQF/ref=sr_1_6?keywords=korean+board+games&qid=1650998127&sprefix=korean+boar%2Caps%2C86&sr=8-6
# p107 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Hwatu-Korean-Flower-Hanafuda-HWATOO/dp/B08C2N3C4Y/ref=sr_1_8?keywords=korean+board+games&qid=1650998127&sprefix=korean+boar%2Caps%2C86&sr=8-8
# p108 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Exit-Abandoned-Korean-Language-Players/dp/B08XWFRV8F/ref=sr_1_20?keywords=korean+board+games&qid=1650998127&sprefix=korean+boar%2Caps%2C86&sr=8-20
# p109 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )

# Traditional
# https://www.amazon.com/February-Mountain-Jewelry-Organizer-Mirror/dp/B08QN9WLY4/ref=sr_1_1?keywords=traditional+korean+gifts&qid=1650998223&sprefix=traditional+korean+%2Caps%2C90&sr=8-1
# p110 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Hanbok-Traditional-Adorable-binyeo-Accessory/dp/B07V67F1PD/ref=sr_1_2?keywords=traditional+korean+gifts&qid=1650998223&sprefix=traditional+korean+%2Caps%2C90&sr=8-2
# p111 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Make-Buy-Home-Coasters-Traditional/dp/B07W65932G/ref=sr_1_3?keywords=traditional+korean+gifts&qid=1650998223&sprefix=traditional+korean+%2Caps%2C90&sr=8-3
# p112 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/JYHOME-Traditional-Korean-Designed-JY001/dp/B09M2L3SKT/ref=sr_1_6?keywords=traditional+korean+gifts&qid=1650998223&sprefix=traditional+korean+%2Caps%2C90&sr=8-6
# p113 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Korean-Traditional-Fabric-Bojagi-Wrapping/dp/B09SCV7KGG/ref=sr_1_9?keywords=traditional+korean+gifts&qid=1650998223&sprefix=traditional+korean+%2Caps%2C90&sr=8-9
# p114 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/cozymomdeco-Korean-Traditional-Glasses-Perfect/dp/B093ZGKNVK/ref=sr_1_11?keywords=traditional+korean+gifts&qid=1650998223&sprefix=traditional+korean+%2Caps%2C90&sr=8-11
# p115 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Korean-Traditional-Womens-Bookmark-Ballpoint/dp/B07KSVRC3W/ref=sr_1_10?keywords=traditional+korean+gifts&qid=1650998223&sprefix=traditional+korean+%2Caps%2C90&sr=8-10
# p116 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Korean-Traditional-Hanbok-Bottle-Hotpink/dp/B08P1DQT6Q/ref=sr_1_24?keywords=traditional+korean+gifts&qid=1650998223&sprefix=traditional+korean+%2Caps%2C90&sr=8-24
# p117 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Parkssisangbang-Korean-Traditional-Norigae-Folding/dp/B07RPFHL2Q/ref=sr_1_26?keywords=traditional+korean+gifts&qid=1650998223&sprefix=traditional+korean+%2Caps%2C90&sr=8-26
# p118 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Korea-Traditional-Korean-Instruments-Haegeum/dp/B06XPD5Y5W/ref=sr_1_2?crid=3NUKDB8IZ4813&keywords=traditional+korean&qid=1650998304&sprefix=traditional+korean%2Caps%2C77&sr=8-2
# p119 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Hanbok-Traditional-Birthday-Outfit-Junior/dp/B07SNS34WM/ref=sr_1_5?crid=3NUKDB8IZ4813&keywords=traditional+korean&qid=1650998304&sprefix=traditional+korean%2Caps%2C77&sr=8-5
# p120 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Hanbok-Korean-Traditional-National-Costumes/dp/B08Y7QKCPD/ref=sr_1_10?crid=3NUKDB8IZ4813&keywords=traditional+korean&qid=1650998304&sprefix=traditional+korean%2Caps%2C77&sr=8-10
# p121 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Handmade-Traditional-Lantern-Oriental-Decorative/dp/B004W3AW2C/ref=sr_1_20?crid=3NUKDB8IZ4813&keywords=traditional+korean&qid=1650998304&sprefix=traditional+korean%2Caps%2C77&sr=8-20
# p122 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/koliq-Korean-Traditional-Soju-Glasses/dp/B0991VGMQT/ref=sr_1_24?crid=3NUKDB8IZ4813&keywords=traditional+korean&qid=1650998304&sprefix=traditional+korean%2Caps%2C77&sr=8-24
# p123 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Antique-Alive-Traditional-Colorful-Miniature/dp/B008O96YO0/ref=sr_1_32?crid=3NUKDB8IZ4813&keywords=traditional+korean&qid=1650998304&sprefix=traditional+korean%2Caps%2C77&sr=8-32
# p124 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Womens-Sleeve-Dragon-Embroidery-Onesize/dp/B07J1QFPQC/ref=sr_1_89?crid=3NUKDB8IZ4813&keywords=traditional+korean&qid=1650998414&sprefix=traditional+korean%2Caps%2C77&sr=8-89
# p125 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Korean-Traditional-Bamboo-Folding-Collapsible/dp/B0757L9SP6/ref=sr_1_99?crid=3NUKDB8IZ4813&keywords=traditional+korean&qid=1650998485&sprefix=traditional+korean%2Caps%2C77&sr=8-99
# p126 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )


# Health
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_atf_aps_sr_pg1_1?ie=UTF8&adId=A05191761ETCRCXJYU4PM&qualifier=1650998558&id=3333218745604650&widgetName=sp_atf&url=%2FCheongKwanJang-Hong-Sam-Won-Plus%2Fdp%2FB092CN8CWM%2Fref%3Dsr_1_4_sspa%3Fkeywords%3Dkorean%2Bhealth%2Bproducts%26qid%3D1650998558%26sprefix%3Dkorean%2Bhealth%252Caps%252C93%26sr%3D8-4-spons%26psc%3D1%26smid%3DA2KVFU84DVJJ7J
# p127 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Premium-Sugar-Free-Balloon-Extract-Concentrate/dp/B087Z6XX8Z/ref=sr_1_7?keywords=korean+health+products&qid=1650998558&sprefix=korean+health%2Caps%2C93&sr=8-7
# p128 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_search_thematic_aps_sr_pg1_4?ie=UTF8&adId=A08794353ATTQU3PRFC3O&qualifier=1650998558&id=4026638693702974&widgetName=sp_search_thematic&url=%2FPocheon-10-6oz-6Years-Ginseng-Saponin%2Fdp%2FB079DWLHCD%2Fref%3Dsxin_14_pa_sp_search_thematic_sspa%3Fcv_ct_cx%3Dkorean%2Bhealth%2Bproducts%26keywords%3Dkorean%2Bhealth%2Bproducts%26pd_rd_i%3DB079DWLHCD%26pd_rd_r%3D152aac0c-8b47-4f92-876b-3e0159d4d411%26pd_rd_w%3DKQeiT%26pd_rd_wg%3DtcvxR%26pf_rd_p%3D937f515b-f21e-48f6-8cfd-8695fa84b7c5%26pf_rd_r%3DADEBCTA7A4Y4Y9JZ5V8V%26qid%3D1650998558%26sprefix%3Dkorean%2Bhealth%252Caps%252C93%26sr%3D1-4-a73d1c8c-2fd2-4f19-aa41-2df022bcb241-spons%26psc%3D1
# p129 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Korean-Baekje-Geumsan-Pomegranate-Collagen/dp/B08J6JXPB7/ref=sr_1_9?keywords=korean+health+products&qid=1650998558&sprefix=korean+health%2Caps%2C93&sr=8-9
# p130 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/LACTO-FIT-ProBiotics-Gold-2000mg-Total/dp/B07JLW1Q6Q/ref=sr_1_24?keywords=korean+health+products&qid=1650998558&sprefix=korean+health%2Caps%2C93&sr=8-24
# p131 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Organic-Bellflower-Healthy-Natural-Additives/dp/B08BXCSTD5/ref=sr_1_45?keywords=korean+health+products&qid=1650998558&sprefix=korean+health%2Caps%2C93&sr=8-45
# p132 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_aps_sr_pg1_1?ie=UTF8&adId=A0370137219BQMI4REO45&qualifier=1650998558&id=3333218745604650&widgetName=sp_btf&url=%2FKorean-Bellflower-Powder-Origin-Korea%2Fdp%2FB0899ZL6HZ%2Fref%3Dsr_1_55_sspa%3Fkeywords%3Dkorean%2Bhealth%2Bproducts%26qid%3D1650998558%26sprefix%3Dkorean%2Bhealth%252Caps%252C93%26sr%3D8-55-spons%26psc%3D1
# p133 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_aps_sr_pg1_1?ie=UTF8&adId=A02028473R15BKSP6KH3I&qualifier=1650998558&id=3333218745604650&widgetName=sp_btf&url=%2FGinseng-Extract-Functional-Antioxidation-Circulation%2Fdp%2FB01LXH3P85%2Fref%3Dsr_1_56_sspa%3Fkeywords%3Dkorean%2Bhealth%2Bproducts%26qid%3D1650998558%26sprefix%3Dkorean%2Bhealth%252Caps%252C93%26sr%3D8-56-spons%26psc%3D1
# p134 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_mtf_aps_sr_pg2_1?ie=UTF8&adId=A08403651UWGUDL4TDAEG&qualifier=1650998723&id=8922995860165889&widgetName=sp_mtf&url=%2FJungs-Laboratory-Immunology-Vita-Postbiotics-Students-Digestive%2Fdp%2FB08WPYZBC8%2Fref%3Dsr_1_67_sspa%3Fkeywords%3Dkorean%2Bhealth%2Bproducts%26qid%3D1650998723%26sprefix%3Dkorean%2Bhealth%252Caps%252C93%26sr%3D8-67-spons%26psc%3D1
# p135 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Korean-Medicine-Holistic-Healing-Essentials/dp/8997639390/ref=sr_1_3?keywords=korean+medicine&qid=1650998848&sprefix=korean+med%2Caps%2C99&sr=8-3
# p136 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Jujube-Ssang-Hwa-Jin-Traditional/dp/B09BBTJ5LY/ref=sr_1_14?keywords=korean+medicine&qid=1650998848&sprefix=korean+med%2Caps%2C99&sr=8-14
# p137 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Relief-Octagon-Traditional-Korean-Insect/dp/B01ESTN44C/ref=sr_1_40?keywords=korean+medicine&qid=1650998848&sprefix=korean+med%2Caps%2C99&sr=8-40
# p138 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Ginseng-Strength-Ginsenosides-L-Carnitine-BioPerine/dp/B0876J69C2/ref=sr_1_56?keywords=korean+medicine&qid=1650998974&sprefix=korean+med%2Caps%2C99&sr=8-56
# p139 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/COSRX-Absorbing-Hydrocolloid-Treatment-Healing/dp/B014SAB948/ref=sr_1_66?keywords=korean+medicine&qid=1650998974&sprefix=korean+med%2Caps%2C99&sr=8-66
# p140 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )

# Art
# https://www.amazon.com/Korean-Calligraphy-Custom-Painted-Symbols/dp/B086D8K317/ref=sr_1_10?crid=F5B5MNXNIAYR&keywords=korean+art&qid=1650999068&sprefix=korean+art%2Caps%2C84&sr=8-10
# p141 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/PeeNoke-Wall-Art-Traditional-Painting/dp/B08QMXT8MT/ref=sr_1_12?crid=F5B5MNXNIAYR&keywords=korean+art&qid=1650999068&sprefix=korean+art%2Caps%2C84&sr=8-12
# 142 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/100-K-Dramas-Scratch-Off-Poster/dp/B09TP9546V/ref=sr_1_11?crid=F5B5MNXNIAYR&keywords=korean+art&qid=1650999068&sprefix=korean+art%2Caps%2C84&sr=8-11
# p143 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Classic-Decoration-Painting-Abstract-Frame8x10inch/dp/B09GN28HBD/ref=sr_1_14?crid=F5B5MNXNIAYR&keywords=korean+art&qid=1650999068&sprefix=korean+art%2Caps%2C84&sr=8-14
# p144 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Grace-Art-Asian-Scroll-Seasons/dp/B00S0K7HQC/ref=sr_1_15?crid=F5B5MNXNIAYR&keywords=korean+art&qid=1650999068&sprefix=korean+art%2Caps%2C84&sr=8-15
# p145 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Korea-1800-Old-Korean-Map/dp/B07HDF75MR/ref=sr_1_20?crid=F5B5MNXNIAYR&keywords=korean+art&qid=1650999068&sprefix=korean+art%2Caps%2C84&sr=8-20
# p146 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/LYHNB-Colorful-Alphabet-Educational-Frameless/dp/B08P1VFY7F/ref=sr_1_22?crid=F5B5MNXNIAYR&keywords=korean+art&qid=1650999068&sprefix=korean+art%2Caps%2C84&sr=8-22
# p147 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Carved-Korean-Wooden-Decorative-Hanging/dp/B00G7TTSCE/ref=sr_1_48?crid=F5B5MNXNIAYR&keywords=korean+art&qid=1650999068&sprefix=korean+art%2Caps%2C84&sr=8-48
# p148 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/PeeNoke-Korean-Traditional-Wooden-Window/dp/B095JY2N6T/ref=sr_1_101?crid=F5B5MNXNIAYR&keywords=korean+art&qid=1650999256&sprefix=korean+art%2Caps%2C84&sr=8-101
# p149 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Lunarable-Tapestry-Painting-Chestnut-Multicolor/dp/B07VVRJJ2D/ref=sr_1_4?keywords=korean+decor&qid=1650999379&sprefix=korean+de%2Caps%2C105&sr=8-4
# p150 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/YGGQF-Pattern-Characters-Superior-Formative/dp/B085BGXTYS/ref=sr_1_6?keywords=korean+decor&qid=1650999379&sprefix=korean+de%2Caps%2C105&sr=8-6
# p151 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/MariaP-12-Metal-Sign-Happiness/dp/B07RG475MC/ref=sr_1_12?keywords=korean+decor&qid=1650999379&sprefix=korean+de%2Caps%2C105&sr=8-12
# p152 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Celadon-Pattern-Decorative-Porcelain-Pottery/dp/B005M8GXL0/ref=sr_1_88?keywords=korean+decor&qid=1650999472&sprefix=korean+de%2Caps%2C105&sr=8-88
# p153 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Wooden-Texture-Paintings-Bedroom-Decorations/dp/B092QR6STR/ref=sr_1_200?keywords=korean+decor&qid=1650999739&sprefix=korean+de%2Caps%2C105&sr=8-200
# p154 = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )