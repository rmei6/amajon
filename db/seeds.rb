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
garden = Department.create!(name: 'gardening')
toys = Department.create!(name: 'toys-and-games')
traditional = Department.create!(name: 'traditional')
health = Department.create!(name: 'health')
art = Department.create!(name: 'art')

# Beauty
# https://www.amazon.com/Seoul-Ceuticals-Korean-Skin-Care/dp/B072K1LNNY/ref=sr_1_9?keywords=korean&qid=1650995701&s=beauty&sr=1-9
p1 = Product.create!('name': 'Korean Skin Care K Beauty - 20% Vitamin C Hyaluronic Acid Serum + CE Ferulic Acid Provides Potent Anti Aging, Anti Wrinkle Korean Beauty 1oz',
    'description': "- THIS KOREAN SKIN CARE VITAMIN C serum contains the same potent, active ingredients as the $160 Skinceuticals CE Ferulic Serum
    \n- EXTREMELY EFFECTIVE - WE PROMISE you'll begin to see results with this K beauty product within 3 weeks when used daily
    \n- POTENT ANTI AGING, ANTI WRINKLE serum is proven to help reduce the appearance of wrinkles, fine lines & crows feet
    \n- THIS TOPICAL VITAMIN C ALSO helps to fade sun spots and is guaranteed to provide you with a brighter more youthful complexion
    \n- THIS FACIAL SERUM HELPS TO shrink pores, clear up acne, prevent breakouts, and minimize the appearance of acne scars & perfect under korean makeup",
    'department': beauty.name,
    'price': 18.00)
# https://www.amazon.com/Celavi-Collagen-12-Sheets-Classic-Skincare/dp/B07ZQQDZ7S/ref=sr_1_10?keywords=korean&qid=1650995701&s=beauty&sr=1-10
p2 = Product.create!('name': '24PCS NEW Celavi Collagen Facial Face Mask (12-Sheets) Classic Korean Skincare',
    'description': "Naturally Brighter Skin Tone - Authentic Korean facial masks, when used regularly they can help diminish signs of dark spots, pigmentation, circles, and puffiness.
    \nInfused with Anti-Aging Antioxidants - A truly age-reversing formula, our collagen face masks help create firmer, healthier, more balanced skin for radiant confidence.
    \nMoisturizing Hydration - Infused with natural botanical ingredients like tea tree, cucumber, honey, charcoal, and avocado, it's gentle on dry, oily, or sensitive skin.
    \nRevitalizing Skin Therapy - A deeply-hydrating experience, our face mask sheets infuse your skin with vital moisture while helping improve overall tone and firmness.
    \nPremier Face Mask Quality - Celavi Korean sheet masks offer safe, natural support, include 12 total face mask packs and 1 Thai Tea Pack, and come backed by a satisfaction guarantee you can trust.",
    'department': beauty.name,
    'price': 21.99)
# https://www.amazon.com/Etude-House-Moistfull-Collagen-Sleeping/dp/B009SD1LK8/ref=sr_1_50?keywords=korean&qid=1650995701&s=beauty&sr=1-50
p3 = Product.create!('name': 'Etude House Moistfull Collagen Sleeping Pack, 3.38 Ounce',
    'description': "Overnight leave-in treatment creates a protective barrier on your skin
    \nThe sleeping pack makes skin feel hydrated and elastic by forming a moisturizing layer over the skin
    \nBottle : 100 ml",
    'department': beauty.name,
    'price': 15.90)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_beauty_sr_pg1_1?ie=UTF8&adId=A0035362103G0585W4U8B&qualifier=1650995701&id=3940331144248043&widgetName=sp_btf&url=%2Fmixsoon-MIXSOON-Bean-Essence%2Fdp%2FB08ZXVVY8M%2Fref%3Dsr_1_58_sspa%3Fkeywords%3Dkorean%26qid%3D1650995701%26s%3Dbeauty%26sr%3D1-58-spons%26psc%3D1
p4 = Product.create!('name': 'MIXSOON Bean Essence',
    'description': "Consists of bean, pear, barley, and pomegranates extract fermented with lactobacillus. No alcohol. No fragrance. A reliable EWG green grade essence that is also supplied to postpartum care centers, facials and spas.
    \nClinical Trial Conducted: Proved to remove the Blackhead & Dead skin & Sebum and Hydrate skin
    \nUSE AS Exfoliant: Prep your face with warm water. Gently massage your skin in circular motion. Rinse off the dead skin cell with toner or mixsoon facial essence.
    \nFOR DAILY USE: After toner step > apply appropriate amount of the essence. Do gentle massage in 3 -5 mins until fully absorbed.
    \nNOTE: Please notice that ON our Product pakage: MFD is Manufacturing date and EXP is Expiration date. *** Products' shelf life: 2 years from MFD.",
    'department': beauty.name,
    'price': 32.00)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_beauty_sr_pg1_1?ie=UTF8&adId=A01066613RD0C00J8BV44&qualifier=1650995701&id=3940331144248043&widgetName=sp_btf&url=%2FBIOHEAL-BOH-Derma-Water-Ceramide%2Fdp%2FB09HMKTJVQ%2Fref%3Dsr_1_55_sspa%3Fkeywords%3Dkorean%26qid%3D1650995701%26s%3Dbeauty%26sr%3D1-55-spons%26psc%3D1
p5 = Product.create!('name': 'BIOHEAL BOH Derma Water Ceramide Gel Cream 2 for 1 Edition (3.35 oz * 2 pcs)',
    'description': "A refreshing gel cream soothes and moisturizes the skin for hydrated and healthy complexion.
    \nWater Ceramide: Reinforces the skin's barrier and locks in moisture.
    \nAquaxyl: A combination of plant-derived ingredients that target dry and dehydrated skin by improving water circulation and reserves.
    \nThose with the skin irritated and blushed by sun exposure.",
    'department': beauty.name,
    'price': 29.00)
# https://www.amazon.com/moisturizing-dehydrated-sensitive-skin-10-rosegold/dp/B09L4L68M5/ref=sr_1_51?keywords=korean&qid=1650995701&s=beauty&sr=1-51
p6 = Product.create!('name': 'Papa Recipe Bombee Sheet Mask, Korean moisturizing honey mask pack for dehydrated and sensitive skin.10 sheets (rosegold+green)',
    'description': "Bombee Rose Gold Mask Pack moisturizes the skin with the gold-honeycom sheet generously soaked with richly hydrating propolis extract, 24K gold and essence.
    \nBombee Green Honey Mask Pack moisturizes the skin as well as nourishing with plant originated ingredients.
    \nHYPOALLERGENIC: Papa Recipe sheet masks are beauty products designed to be hypoallergenic and suitable for all skin types, including the most sensitive of skin. Helps improve skin's overall appearance, giving you that youthful glow, without heavy cream, lotion, gel, oil, clay, charcoal, mud, or harsh exfoliating scrub or peel off masks
    \nSKIN BENEFITS: The bombee honey masks has anti aging, hydrating properties to help even out skin tone, acts as a dark or age spot corrector or pore minimizer, decreases the look of fine lines, wrinkles, and redness, brighten dull looking skin, and can even calm mild problematic (acne or acne scars) or flaky skin around the eye, nose, and mouth
    \nPERFECT GIFT: This Korean Moisturizer skincare product makes a great gift or stocking stuffer add on gift for women, men, teens, girls, or holidays (Christmas, Easter, Birthday, Bachelorette, Spa Day and more). Be sure to check out the rest of the Papa Recipe skincare line, sold separately",
    'department': beauty.name,
    'price': 19.99)
# https://www.amazon.com/Korean-Skin-Care-K-Beauty-Moisturizer/dp/B09FSW9ZT7/ref=sr_1_58?keywords=korean&qid=1650995829&s=beauty&sr=1-58
p7 = Product.create!('name': 'Korean Skin Care K-Beauty Moisturizer for Oily Skin: DERMA ORGANIC Vitamin C Serum For Face with Hyaluronic Acid, CE, Ferulic Acid Korean Skincare',
    'description': "Great on Oily Skin: It is light on skin and leaves no residues, makes skin pores tight.
    \nOil Free Formula: We replaced pore clogging Tocopherol, or Vitamin E oil with Vitamin B & E enriched pure organic Aloe Vera Juice.
    \nNO Oxidation up to 18 months: Unlike the ordinary Vitamin C Serum, it doesn't oxidize under sun, air, even vanity light.
    \nPerfect for Sensitive Skin: It is even safe on child's skin, it doesn't have any harmful ingredients such as Phenoxyethanol, Propylene glycol or Triethanolamine that you see on other popular Vitamin C serums,
    \nNo artificial fragrance, color, nor alcohol is added, so it is clear in color with no smell as pure vitamin C should be.",
    'department': beauty.name,
    'price': 35.99)
# https://www.amazon.com/flavors-Essence-exfoliate-hydrate-brighten/dp/B0725J9C92/ref=sr_1_67?keywords=korean&qid=1650995829&s=beauty&sr=1-67
p8 = Product.create!('name': "A'pieu Milk Sheet Mask (7 flavors in 1 pack) with Milk Essence to mildly exfoliate, hydrate, and brighten - Korean skincare for normal to dry skin.",
    'description': "A'pieu Milk Mask hydrates and brightens your skin in one go. Soaked in real milk protein extract that nourishes normal to dry skin types.
    \nThe milk-protein-infused daily sheet mask helps restore dry and dull skin.
    \nOn a clean and dry face, apply the sheet evenly. Remove after 10-15 minutes.
    \nTHE BEST OF K-BEAUTY: A'PIEU brings the very best in Korean beauty to the rest of the world with luxury skincare products that are trendy, effective, and formulated for all skin types.",
    'department': beauty.name,
    'price': 14.00)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_beauty-intl-ship_sr_pg1_1?ie=UTF8&adId=A0286062OR158T9K9I9P&qualifier=1650995884&id=4591473942581459&widgetName=sp_btf&url=%2FSulwhasoo-Essential-Comfort-Moisture-Cream%2Fdp%2FB09VP4WMCY%2Fref%3Dsr_1_30_sspa%3Fcrid%3D1JMZJLOAX3UQ0%26keywords%3Dkorean%26qid%3D1650995884%26s%3Dbeauty-intl-ship%26sprefix%3Dkorean%252Cbeauty-intl-ship%252C79%26sr%3D1-30-spons%26psc%3D1
p9 = Product.create!('name': 'Sulwhasoo Essential Comfort Moisture Cream: Hydrate, Moisturize, and Dewy Glow, 1.69 fl. oz.',
    'description': "A breathable, quenching gel cream that hydrates and comforts skin for a dewy, healthy glow. Powered by JAUM Moisturizing Complex™, a powerhouse of hydrating and nourishing Herbs, Yam, Arrowroot flowers plus Hyaluronic Acid.",
    'department': beauty.name,
    'price': 80.00)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_beauty-intl-ship_sr_pg1_1?ie=UTF8&adId=A10288002U2YI1MRBHV0L&qualifier=1650995884&id=4591473942581459&widgetName=sp_btf&url=%2FDaandanbit-Contains-Anti-winkle-functional-Traditional%2Fdp%2FB09FDP7CBZ%2Fref%3Dsr_1_29_sspa%3Fcrid%3D1JMZJLOAX3UQ0%26keywords%3Dkorean%26qid%3D1650995884%26s%3Dbeauty-intl-ship%26sprefix%3Dkorean%252Cbeauty-intl-ship%252C79%26sr%3D1-29-spons%26psc%3D1
p10 = Product.create!('name': 'Daandanbit [DAANDAN BIT] Boyun Firming Cream 50ml / 1.7fl oz Contains camellia sinensis callus culture extract Anti-winkle functional Korean Traditional Herbal Cream 1.7 Ounce',
    'description': "Boyun Firming Cream 50ml / 1.7fl oz
    \n(Functional cosmetics for the improvement of wrinkles)
    \nThis is a cream for elasticity that thoroughly rejuvinates skin elasticity with the combination of natural ingredients and the concentrated nutrients that deliver natural energy to the skin
    \nCamellia Sinensis Callus Culture Extract and vegetable extracts keep the skin fresh and healthy Based on an herbal formula, each of the precious ingredients is carefully selected and blended to erase the traces of time on the skin
    \nDuring the last step of skincare, apply the appropriate amount to the face and neck areas as if you are massaging your face, and then press it with both hands to encourage absorption",
    'department': beauty.name,
    'price': 14.99)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_atf_next_beauty-intl-ship_sr_pg2_1?ie=UTF8&adId=A07075922H5TXAQGKNHBN&qualifier=1650995927&id=2536864278273078&widgetName=sp_atf_next&url=%2FEmulsion-Wrinkle-Nourishing-Moisturizing-Cosmetics%2Fdp%2FB09PKYXD2V%2Fref%3Dsr_1_25_sspa%3Fcrid%3D1JMZJLOAX3UQ0%26keywords%3Dkorean%26qid%3D1650995927%26s%3Dbeauty-intl-ship%26sprefix%3Dkorean%252Cbeauty-intl-ship%252C79%26sr%3D1-25-spons%26psc%3D1
p11 = Product.create!('name': 'YEDAM YUN BIT Prime Luxury Gold Women Skin Care 4 Set With Skin, Emulsion, Cream, BB Cream,Wrinkle Care Nourishing And Moisturizing, Calming Korea Cosmetics',
    'description': "Korea Skin Care Set: Skin, Emulsion, Cream, BB Cream + 4 Sample
    \nPrime Luxury Gold Intensive Skin: With appropriate mixture of gold powder(99.9% of purity) and phyto placenta extracts, it prevents the loss of moisture on skin and keeps moisturized condition for dried and tough skin to provide more refresh and vitalized skin
    \nPrime Luxury Gold Intensive Emulsion: Both phyto placenta and royal jelly extracts provide abundant nutritions to dried skin and relaxed and smooth feeling to form moisturized membrane on the skin so as to make you feel moisturized, refined and soft skin.
    \nPrime Luxury Gold Intensive Lifting Cream: It is a wrinkle-improving functional cream that corrects the balance of loose skin with adenosine that gives elasticity to the skin and keeps the pure gold(99.9%) and phyto placenta extract moist for a long time.
    \nPrime Luxury Gold Intensive BB Cream: The niacinamide elements prevents the deposition of melanin pigments on the skin and restraints generation of dried skin and skin troubles and the adenosine elements provides resilience to the skin.",
    'department': beauty.name,
    'price': 46.99)
# https://www.amazon.com/Face-Shop-Water-Bright-Cleansing/dp/B00FJ2LU2Q/ref=sr_1_28?crid=1JMZJLOAX3UQ0&keywords=korean&qid=1650995927&s=beauty-intl-ship&sprefix=korean%2Cbeauty-intl-ship%2C79&sr=1-28
p12 = Product.create!('name': 'THEFACESHOP Rice Water Bright Foam Cleanser 150ml',
    'description': "Foaming cleanser with Rice Extract gently moisturizes skin with its rich, dense foam.",
    'department': beauty.name,
    'price': 13.00)
# https://www.amazon.com/Korean-Skin-Care-Glycolic-Exfoliating/dp/B07WKDR1BL/ref=sr_1_27?crid=1JMZJLOAX3UQ0&keywords=korean&qid=1650995927&s=beauty-intl-ship&sprefix=korean%2Cbeauty-intl-ship%2C79&sr=1-27
p13 = Product.create!('name': 'Korean Skin Care - Dr Song Glycolic Acid Face Wash - Exfoliating Face Wash with 10% Glycolic Acid, AHA for Anti Aging, Acne and Wrinkles Korean Beauty',
    'description': "Deep Pore Cleanser and Natural Exfoliation - Lift away dirt, oils, makeup and impurities from your pores with a revitalizing glycolic acid gel that helps clean and clarify your skin while restoring essential moisture and hydration.
    \nFight Blemishes and Improve Clarity - This glycolic acid facial cleanser can help reduce acne breakouts by toning and tightening pores, reducing whiteheads and blackheads, and restoring healthy, glowing radiance.
    \nSoft, Soothing, Non-Drying Formula - Dr Song glycolic acid exfoliating cleanser is safe on dry, oily, sensitive, irritated, and combination skin and leaves skin feeling softer, suppler, and firmer to the touch for youthful balance.
    \nAge-Defying Antioxidants - A natural anti-inflammatory our glycolic cleanser also helps reduce redness and irritation while also diminishing discoloration, dark bags under your eyes, and hyperpigmentation.
    \nDr Song Brand Guarantee - Every bottle of glycolic cleanser 10% formula, as well as our other skincare products, is backed by our responsive customer support, superior skin-safe purity, and reliable effectiveness to ensure your satisfaction.",
    'department': beauty.name,
    'price': 7.99)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_beauty-intl-ship_sr_pg2_1?ie=UTF8&adId=A00670702RMK6348PLH66&qualifier=1650995927&id=2536864278273078&widgetName=sp_btf&url=%2FSulwhasoo-Essential-Comfort-Balancing-Water%2Fdp%2FB09VPBR3LT%2Fref%3Dsr_1_45_sspa%3Fcrid%3D1JMZJLOAX3UQ0%26keywords%3Dkorean%26qid%3D1650995927%26s%3Dbeauty-intl-ship%26sprefix%3Dkorean%252Cbeauty-intl-ship%252C79%26sr%3D1-45-spons%26psc%3D1
p14 = Product.create!('name': 'Sulwhasoo Essential Comfort Balancing Water: Hydrate, Soothe, and Nourish, 5.07 fl. oz.',
    'description': "A quick-absorbing moisturizing toner that delivers an instant surge of hydration while helping to balance the skin content for silky, radiant-looking skin.",
    'department': beauty.name,
    'price': 68.00)
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_atf_next_beauty-intl-ship_sr_pg4_1?ie=UTF8&adId=A0800730365OEGHETHKW3&qualifier=1650996042&id=6281052555721938&widgetName=sp_atf_next&url=%2FDONGINBI-Defense-Anti-aging-Anti-Wrinkle-Antioxidant%2Fdp%2FB09HJP68L6%2Fref%3Dsr_1_75_sspa%3Fcrid%3D1JMZJLOAX3UQ0%26keywords%3Dkorean%26qid%3D1650996042%26s%3Dbeauty-intl-ship%26sprefix%3Dkorean%252Cbeauty-intl-ship%252C79%26sr%3D1-75-spons%26psc%3D1
p15 = Product.create!('name': 'DONGINBI Daily Defense Cream, Anti-aging, Anti-Wrinkle & Antioxidant Face Cream, Korean Red Ginseng Skin Care - 25ml',
    'description': "PENETRATES DEEPLY TO AWAKEN YOUTHFUL SKIN: Infused with our advanced self-sustaining Red Ginseng formula, the daily defense cream effectively returns your skin to its natural condition. It fights aging to awaken firm, youthful skin.
    \nANTI-AGING FACE CREAM: The Core RG Ginseno-Biome technology follows a three-phased approach to reverse aging and give you firm, supple skin. It strengthens skin barrier and enhances the skin's ability to heal itself. Wrinkles are reduced and your skin is firm with a youthful glow.
    \nFIRMING & LIFTING SKIN: Our anti-aging daily defense cream is clinically proven to help smooth wrinkles, promote an even skin tone, and visibly firm & lift skin for a difference you can see in just as little as 4 weeks, revealing smoother and younger-looking skin. It can reduce wrinkles by 20.7%, moisturize skin by 10.6%, and improve skin barrier by 11.2%.
    \nMOISTURIZING & NOURISHING: Dense creamy texture, yet lightweight, enriched with Red Ginseng that moisturizes and nourishes the skin. Your skin will not only look better, but will also be healthier.
    \nREJUVENATING KOREAN RED GINSENG: Long-established since 1899, DONGINBI is a reputed skin care brand of the Korean Ginseng Corp. We are dedicated to offering luxurious skin care, and have honed our Red Ginseng processing and refining technology to effectively capture its nourishing and anti-aging properties.",
    'department': beauty.name,
    'price': 65.99)


# Food
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_atf_grocery_sr_pg1_1?ie=UTF8&adId=A02640903T6S41CIJ8L42&qualifier=1650996083&id=2763272442096322&widgetName=sp_atf&url=%2FSempio-Pepper-Paste-Gochujang-6-1-Pounds%2Fdp%2FB004R9GFJU%2Fref%3Dsr_1_1_sspa%3Fkeywords%3Dkorean%2Bfood%26qid%3D1650996083%26s%3Dgrocery%26sprefix%3Dkorean%252Cgrocery%252C97%26sr%3D1-1-spons%26psc%3D1%26smid%3DA3QMA05TS4QA12
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Fruits-Mochi-Daifuku-Ichigo-7-4oz/dp/B071HR77KX/ref=sr_1_5?keywords=korean+food&qid=1650996083&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-5
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Jaeraesik-Soybean-Paste-CJ-Haechandle/dp/B00EZX6X04/ref=sr_1_8?keywords=korean+food&qid=1650996083&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-8
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Samyang-Buldark-Chicken-overseas-shipment/dp/B07N8TQSBT/ref=sr_1_19?keywords=korean+food&qid=1650996083&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-19
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Premium-Korean-Balloon-Flower-Ginger/dp/B087ZFBHWD/ref=sr_1_25?keywords=korean+food&qid=1650996083&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-25
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Korea-Seasoned-Dried-Flower-%EA%BD%83%EB%B3%B4%EB%8B%A4%EC%98%A4%EC%A7%95%EC%96%B4/dp/B07X3WJJ86/ref=sr_1_27?keywords=korean+food&qid=1650996083&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-27
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Yopokki-Jjajang-Rabokki-Ramen-Noodle/dp/B09L496VZ6/ref=sr_1_29?keywords=korean+food&qid=1650996179&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-29
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Kewpie-Mayonaise-17-64-Ounce-Tubes-Pack/dp/B003NRLLLE/ref=sr_1_30?keywords=korean+food&qid=1650996179&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-30
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Tae-kyung-Korean-Pepper-Flakes-Gochugaru/dp/B099FKF9N6/ref=sr_1_39?keywords=korean+food&qid=1650996179&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-39
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_grocery_sr_pg3_1?ie=UTF8&adId=A0092745HBOEWVWOCOA7&qualifier=1650996257&id=4601855170084462&widgetName=sp_btf&url=%2Fbibigo-Korean-Pre-Made-Packaged-Seaweed%2Fdp%2FB07R1J915H%2Fref%3Dsr_1_71_sspa%3Fkeywords%3Dkorean%2Bfood%26qid%3D1650996257%26s%3Dgrocery%26sprefix%3Dkorean%252Cgrocery%252C97%26sr%3D1-71-spons%26psc%3D1%26smid%3DAT03FDQZB4H70
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Palkin-flavors-Korean-overseas-shipment/dp/B07NJDHZVX/ref=sr_1_78?keywords=korean+food&qid=1650996274&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-78
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/CJ-Beksul-Furikake-Seasoning-Vegetable/dp/B01JW1EBIY/ref=sr_1_110?keywords=korean+food&qid=1650996318&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-110
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Dongsuh-Peanut-cereals-overseas-shipment/dp/B08C9SDF6X/ref=sr_1_126?keywords=korean+food&qid=1650996318&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-126
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Bonjuk-Premium-Korean-Porridge-Seafood/dp/B085VQM4BG/ref=sr_1_164?keywords=korean+food&qid=1650996358&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-164
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Crispy-Potato-Korean-Flavour-Medium/dp/B09BBFTXPC/ref=sr_1_184?keywords=korean+food&qid=1650996376&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-184
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Official-HBAF-Seasoned-Almonds-Chicken/dp/B09XB6RZNN/ref=sr_1_224?keywords=korean+food&qid=1650996444&s=grocery&sprefix=korean%2Cgrocery%2C97&sr=1-224
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )

# Kitchen
# https://www.amazon.com/Crazy-Korean-Cooking-Sizzling-Bibimbap/dp/B00KFMTLOO/ref=sr_1_2?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996487&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-2
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Korean-Ramen-Cooking-Pot-Chopsticks-Heating-Kitchen-Cookware/dp/B08G1CM3XX/ref=sr_1_6?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996487&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-6
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/TeChef-Tamagoyaki-Japanese-Collection-Non-stick/dp/B00N4N2EP4/ref=sr_1_7?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996487&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-7
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Spoons-pieces-Stainless-Kitchen-Restaurant/dp/B083LV6S6Q/ref=sr_1_10?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996487&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-10
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_mtf_kitchen-intl-ship_sr_pg1_1?ie=UTF8&adId=A043440539AZ5QGAC648B&qualifier=1650996487&id=8124655637283983&widgetName=sp_mtf&url=%2FCooker-Intelligent-Digital-Preset-Stainless%2Fdp%2FB09JSDM8KH%2Fref%3Dsr_1_13_sspa%3Fcrid%3DVI05AD20QT0%26keywords%3Dkorean%2Bkitchen%26qid%3D1650996487%26s%3Dkitchen-intl-ship%26sprefix%3Dkorean%2Bkitchen%252Ckitchen-intl-ship%252C54%26sr%3D1-13-spons%26psc%3D1%26smid%3DAJ83XRP02KL30
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Stirring-Cooking-Japanese-ADLORYEA-friendly/dp/B07CXNKTD4/ref=sr_1_16?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996487&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-16
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/TeChef-Stovetop-Non-Stick-Coating-Technology/dp/B00JT8ZYCS/ref=sr_1_19?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996487&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-19
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Barbecue-Cutting-Serrated-Stainless-Scissors/dp/B01MYTIC16/ref=sr_1_24?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996563&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-24
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_kitchen-intl-ship_sr_pg1_1?ie=UTF8&adId=A05863291JYM0BW39FK24&qualifier=1650996563&id=2534797092238754&widgetName=sp_btf&url=%2FElectric-Portable-Nonstick-Multifunction-Saucepan%2Fdp%2FB09GN7JKJ9%2Fref%3Dsr_1_30_sspa%3Fcrid%3DVI05AD20QT0%26keywords%3Dkorean%2Bkitchen%26qid%3D1650996563%26s%3Dkitchen-intl-ship%26sprefix%3Dkorean%2Bkitchen%252Ckitchen-intl-ship%252C54%26sr%3D1-30-spons%26psc%3D1
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_atf_next_kitchen-intl-ship_sr_pg2_1?ie=UTF8&adId=A0757546O810UQ8S79OY&qualifier=1650996580&id=2330488405705501&widgetName=sp_atf_next&url=%2FMDLUU-Dolsot-Bibimbap-Granite-Korean%2Fdp%2FB085VWTFCQ%2Fref%3Dsr_1_27_sspa%3Fcrid%3DVI05AD20QT0%26keywords%3Dkorean%2Bkitchen%26qid%3D1650996580%26s%3Dkitchen-intl-ship%26sprefix%3Dkorean%2Bkitchen%252Ckitchen-intl-ship%252C54%26sr%3D1-27-spons%26psc%3D1
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Cleaver-Butcher-Vegetable-Kitchen-Camping/dp/B08JHWYXB1/ref=sr_1_25?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996580&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-25
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_mtf_kitchen-intl-ship_sr_pg2_1?ie=UTF8&adId=A0192276FBJBOSPPLRYL&qualifier=1650996580&id=2330488405705501&widgetName=sp_mtf&url=%2FTobyan-Soft-Cotton-Linen-Apron%2Fdp%2FB09PMTG2KM%2Fref%3Dsr_1_30_sspa%3Fcrid%3DVI05AD20QT0%26keywords%3Dkorean%2Bkitchen%26qid%3D1650996580%26s%3Dkitchen-intl-ship%26sprefix%3Dkorean%2Bkitchen%252Ckitchen-intl-ship%252C54%26sr%3D1-30-spons%26psc%3D1
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Wooden-Long-Spoons-Natural-Cooking/dp/B09PZ6FM39/ref=sr_1_37?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996580&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-37
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_kitchen-intl-ship_sr_pg2_1?ie=UTF8&adId=A021592422Z25NWKYDI0Z&qualifier=1650996580&id=2330488405705501&widgetName=sp_btf&url=%2FSanbege-Ceramic-Sizzling-Bibimbap-Casserole%2Fdp%2FB09MCY4ZV2%2Fref%3Dsr_1_45_sspa%3Fcrid%3DVI05AD20QT0%26keywords%3Dkorean%2Bkitchen%26qid%3D1650996580%26s%3Dkitchen-intl-ship%26sprefix%3Dkorean%2Bkitchen%252Ckitchen-intl-ship%252C54%26sr%3D1-45-spons%26psc%3D1
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_atf_next_kitchen-intl-ship_sr_pg3_1?ie=UTF8&adId=A05884062QA2NW4EKL7RS&qualifier=1650996673&id=993139042312979&widgetName=sp_atf_next&url=%2FCooking-Capacity-Ceramic-Casserole-23-6fl%2Fdp%2FB09NNG724R%2Fref%3Dsr_1_50_sspa%3Fcrid%3DVI05AD20QT0%26keywords%3Dkorean%2Bkitchen%26qid%3D1650996673%26s%3Dkitchen-intl-ship%26sprefix%3Dkorean%2Bkitchen%252Ckitchen-intl-ship%252C54%26sr%3D1-50-spons%26psc%3D1
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_mtf_kitchen-intl-ship_sr_pg3_1?ie=UTF8&adId=A022863726U8CT6HRJH5D&qualifier=1650996673&id=993139042312979&widgetName=sp_mtf&url=%2FElinCube-Premium-Platter-Cooking-Bibimbap%2Fdp%2FB08R3DCF6V%2Fref%3Dsr_1_56_sspa%3Fcrid%3DVI05AD20QT0%26keywords%3Dkorean%2Bkitchen%26qid%3D1650996673%26s%3Dkitchen-intl-ship%26sprefix%3Dkorean%2Bkitchen%252Ckitchen-intl-ship%252C54%26sr%3D1-56-spons%26psc%3D1
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Excelife-86150-Folding-Wooden-Korean/dp/B0722TZ48M/ref=sr_1_73?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996706&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-73
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/AGAINATURE-Kitchen-Reusable-Absorbing-Eco-Friendly/dp/B093KHRVDZ/ref=sr_1_81?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996706&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-81
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Cuckoo-CR-0655F-Cooker-Liters-Quarts/dp/B01MQWFGKG/ref=sr_1_77?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996706&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-77
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/SASTYBALE-Japanese-Waitress-Painting-Gardening%EF%BC%88Gray%EF%BC%8CMedium%EF%BC%89/dp/B08FSTK6C6/ref=sr_1_86?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996706&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-86
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/imarku-Removable-Multifunctional-Stainless-Sharpening/dp/B088D82YDZ/ref=sr_1_88?crid=VI05AD20QT0&keywords=korean+kitchen&qid=1650996706&s=kitchen-intl-ship&sprefix=korean+kitchen%2Ckitchen-intl-ship%2C54&sr=1-88
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_kitchen-intl-ship_sr_pg4_1?ie=UTF8&adId=A04626432Y0KUJOUNKLDV&qualifier=1650996706&id=8056718172970346&widgetName=sp_btf&url=%2FLavensi-Tamagoyaki-Japanese-Omelette-Non-stick%2Fdp%2FB098KYBY28%2Fref%3Dsr_1_94_sspa%3Fcrid%3DVI05AD20QT0%26keywords%3Dkorean%2Bkitchen%26qid%3D1650996706%26s%3Dkitchen-intl-ship%26sprefix%3Dkorean%2Bkitchen%252Ckitchen-intl-ship%252C54%26sr%3D1-94-spons%26psc%3D1
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_mtf_kitchen-intl-ship_sr_pg5_1?ie=UTF8&adId=A01510603EIXORTNPLW09&qualifier=1650996783&id=7561152989686588&widgetName=sp_mtf&url=%2FSEAAN-Portable-Electric-Non-stick-Temperature%2Fdp%2FB08VJ52XWV%2Fref%3Dsr_1_103_sspa%3Fcrid%3DVI05AD20QT0%26keywords%3Dkorean%2Bkitchen%26qid%3D1650996783%26s%3Dkitchen-intl-ship%26sprefix%3Dkorean%2Bkitchen%252Ckitchen-intl-ship%252C54%26sr%3D1-103-spons%26psc%3D1
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )

# Attire
# https://www.amazon.com/YESNO-Cropped-Bloomers-Elastic-Pockets/dp/B07PM2ZLYL/ref=sr_1_1?keywords=Korean+Clothes&qid=1650997269&sr=8-1
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Womens-Casual-Jumpsuits-Overalls-Rompers/dp/B07CNWQD7S/ref=sr_1_2?keywords=Korean+Clothes&qid=1650997269&sr=8-2
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Mfacl-Hoodies-Sweatshirt-Clothes-Two-Piece/dp/B09F73133L/ref=sr_1_3?keywords=Korean+Clothes&qid=1650997269&sr=8-3
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/JLFFYJ-Aesthetic-Oversized-Streetwear-Tops-Beige/dp/B09BDV9576/ref=sr_1_4?keywords=Korean+Clothes&qid=1650997269&sr=8-4
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Womens-Striped-Button-Casual-Sports/dp/B093KCLR2S/ref=sr_1_5?keywords=Korean+Clothes&qid=1650997269&sr=8-5
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Zzple-Clothes-Sweater-Version-Fashion/dp/B09FQ25C2K/ref=sr_1_6?keywords=Korean+Clothes&qid=1650997269&sr=8-6
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Winter-Clothes-Hoodies-Pullover-Apricot/dp/B09CTJM53D/ref=sr_1_7?keywords=Korean+Clothes&qid=1650997269&sr=8-7
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Pullover-Clothes-Oversized-Sweatshirt-Harajuku/dp/B094Y5LJYR/ref=sr_1_9?keywords=Korean+Clothes&qid=1650997269&sr=8-9
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Womens-Sleeve-Japanese-Cardigan-OneSize/dp/B07FSWQC28/ref=sr_1_23?keywords=Korean+Clothes&qid=1650997269&sr=8-23
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Wrenpies-Skateboarding-Sweatshirt-Pullover-Aesthetic/dp/B09FF34PX4/ref=sr_1_22?keywords=Korean+Clothes&qid=1650997269&sr=8-22
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_mtf_aps_sr_pg1_1?ie=UTF8&adId=A0923408TY1YZ2JFDYP5&url=%2FUQJE-Women-Loose-Boyfriends-Trousers%2Fdp%2FB09Q37ZCDP%2Fref%3Dsr_1_27_sspa%3Fkeywords%3DKorean%2BClothes%26qid%3D1650997269%26sr%3D8-27-spons%26psc%3D1&qualifier=1650997269&id=3010713106466771&widgetName=sp_mtf
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/BERING-Womens-Cotton-Hidden-Loafers/dp/B07PS5DQC9/ref=sr_1_37?keywords=Korean+Clothes&qid=1650997269&sr=8-37
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Cosfun-Two-Piece-Fleece-Detachable-mp006068/dp/B08QLY7HNR/ref=sr_1_38?keywords=Korean+Clothes&qid=1650997269&sr=8-38
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Byvheh-Harajuku-Sweatpants-Trousers-Joggers/dp/B092MJG9LY/ref=sr_1_39?keywords=Korean+Clothes&qid=1650997269&sr=8-39
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Sweatshirt-Harajuku-Crewneck-Aesthetic-8253black/dp/B09GKCVLP7/ref=sr_1_41?keywords=Korean+Clothes&qid=1650997269&sr=8-41
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Harajuku-Kawaii-Hoodie-Sweater-Clothes/dp/B09LVTRW9G/ref=sr_1_44?keywords=Korean+Clothes&qid=1650997269&sr=8-44
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/ZAFUL-Knitted-Sweater-Crewneck-Pullover/dp/B07HN2V9YV/ref=sr_1_45?keywords=Korean+Clothes&qid=1650997269&sr=8-45
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/SOLY-HUX-Colorblock-Embroidery-Drawstring/dp/B097PVY6CW/ref=sr_1_48?keywords=Korean+Clothes&qid=1650997269&sr=8-48
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_aps_sr_pg1_1?ie=UTF8&adId=A07726261MEMQWEC8YBDS&url=%2FZPAYFSDS-Womens-Hoodies-Pullover-Sweatshirts%2Fdp%2FB081LL68FC%2Fref%3Dsr_1_57_sspa%3Fkeywords%3DKorean%2BClothes%26qid%3D1650997269%26sr%3D8-57-spons%26psc%3D1&qualifier=1650997269&id=3010713106466771&widgetName=sp_btf
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )

# Garden
# https://www.amazon.com/HomeTheWay-weeding-farming-Daejanggan-Hand-made/dp/B077S7HCN7/ref=sr_1_2?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997517&sprefix=korean+garden%2Caps%2C82&sr=8-2
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/YOUNGJU-Premium-Quality-Gardening-Blacksmith/dp/B08FH9ZYMT/ref=sr_1_6?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997517&sprefix=korean+garden%2Caps%2C82&sr=8-6
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/NY-FASHIONCITY-Baekdu-Korean-Carbon/dp/B09D7WK3GQ/ref=sr_1_16?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997517&sprefix=korean+garden%2Caps%2C82&sr=8-16
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Gardening-Attached-Farming-Gardener-Agriculture/dp/B07YBPW4S3/ref=sr_1_21?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997517&sprefix=korean+garden%2Caps%2C82&sr=8-21
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_mtf_aps_sr_pg1_1?ie=UTF8&adId=A0842589K3X3XG8YF82I&qualifier=1650997517&id=6635021737743976&widgetName=sp_mtf&url=%2Flabworkauto-Foldable-Kneeler-Portable-Folding%2Fdp%2FB086QV1W2N%2Fref%3Dsr_1_27_sspa%3Fcrid%3DZW85KZ6DSGIV%26keywords%3DKorean%2Bgarden%26qid%3D1650997517%26sprefix%3Dkorean%2Bgarden%252Caps%252C82%26sr%3D8-27-spons%26psc%3D1
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/SUPIA-Korean-Gardening-Excellent-Vegetable/dp/B08975KY1Q/ref=sr_1_31?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997517&sprefix=korean+garden%2Caps%2C82&sr=8-31
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/YoungJu-DaeJangGan-Handmade-Weeding-Blacksmith/dp/B09WW15PTK/ref=sr_1_29?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997517&sprefix=korean+garden%2Caps%2C82&sr=8-29
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/JADAM-Organic-PEST-DISEASE-CONTROL/dp/8989220475/ref=sr_1_33?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997517&sprefix=korean+garden%2Caps%2C82&sr=8-33
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Design-Toscano-Temple-Polyresin-Verdigris/dp/B002ZPJC7K/ref=sr_1_42?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997517&sprefix=korean+garden%2Caps%2C82&sr=8-42
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Prohoe-Garden-Cultivator-Backyard-Gardening/dp/B07L4976CJ/ref=sr_1_44?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997517&sprefix=korean+garden%2Caps%2C82&sr=8-44
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Individual-Michihili-Copenhagen-Gardeners-Basics/dp/B092GBVP2F/ref=sr_1_46?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997517&sprefix=korean+garden%2Caps%2C82&sr=8-46
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Nacome-Lantern-Landscape-Ornament-Polyresin/dp/B091ZFGSR8/ref=sr_1_43?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997517&sprefix=korean+garden%2Caps%2C82&sr=8-43
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/BlueArrowExpress-Kana-Hoe-217-Japanese/dp/B01B2MENPC/ref=sr_1_48?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997517&sprefix=korean+garden%2Caps%2C82&sr=8-48
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_aps_sr_pg1_1?ie=UTF8&adId=A02285032M0EER62FX2BN&qualifier=1650997517&id=6635021737743976&widgetName=sp_btf&url=%2FUpBlend-Outdoors-Wind-Chime-Hand-Tuned%2Fdp%2FB0888RXQ7D%2Fref%3Dsr_1_56_sspa%3Fcrid%3DZW85KZ6DSGIV%26keywords%3DKorean%2Bgarden%26qid%3D1650997517%26sprefix%3Dkorean%2Bgarden%252Caps%252C82%26sr%3D8-56-spons%26psc%3D1
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Nisaku-NJP650-Hori-Hori-Authentic-Stainless/dp/B0007WFG2I/ref=sr_1_85?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997668&sprefix=korean+garden%2Caps%2C82&sr=8-85
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/LANDUM-Figurine-Ornaments-Miniature-Dollhouse/dp/B07FCQFRPC/ref=sr_1_87?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997668&sprefix=korean+garden%2Caps%2C82&sr=8-87
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/JHP-Sculpture-Hand-Painted-Greenman-Decoration/dp/B0785KCCGN/ref=sr_1_98?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997717&sprefix=korean+garden%2Caps%2C82&sr=8-98
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/COOLJOB-Garden-Gloves-Gardening-Working/dp/B07MLWK6MS/ref=sr_1_141?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997717&sprefix=korean+garden%2Caps%2C82&sr=8-141
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Magid-Glove-Safety-Professional-BE195TM/dp/B00EONLNA0/ref=sr_1_182?crid=ZW85KZ6DSGIV&keywords=Korean+garden&qid=1650997759&sprefix=korean+garden%2Caps%2C82&sr=8-182
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )

# Toys
# https://www.amazon.com/TOYTRON-Futurebook-Pororopen-Developing-Beginning/dp/B083962K76/ref=sr_1_2?crid=1RZH7UU9PD0JT&keywords=Korean+toys&qid=1650997823&sprefix=korean+toys%2Caps%2C92&sr=8-2
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Alphabet-Magnetic-Letters-Learning-Education/dp/B089RXKJVJ/ref=sr_1_3?crid=1RZH7UU9PD0JT&keywords=Korean+toys&qid=1650997823&sprefix=korean+toys%2Caps%2C92&sr=8-3
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Korean-Flower-Hwatu-Hand-drawn-illustration/dp/B072MWPB4L/ref=sxin_14_ac_d_bv?ac_md=0-0-QmVzdCBWYWx1ZQ%3D%3D-ac_d_bv_bv_bv&crid=1RZH7UU9PD0JT&cv_ct_cx=Korean+toys&keywords=Korean+toys&pd_rd_i=B072MWPB4L&pd_rd_r=8b8467a8-6d72-463f-ba12-94f4b08c11d8&pd_rd_w=qtF0H&pd_rd_wg=rqEZk&pf_rd_p=e11d91a6-f987-4c88-b86e-53e4b6a75723&pf_rd_r=5CYDSYW2N4BVTN06ADEF&psc=1&qid=1650997823&sprefix=korean+toys%2Caps%2C92&sr=1-1-270ce31b-afa8-499f-878b-3bb461a9a5a6
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Dr-Moku-Hangul-Flashcards-Mnemonics/dp/B092JNN6NK/ref=sxin_14_ac_d_bv?ac_md=2-1-VW5kZXIgJDI1-ac_d_bv_bv_bv&crid=1RZH7UU9PD0JT&cv_ct_cx=Korean+toys&keywords=Korean+toys&pd_rd_i=B092JNN6NK&pd_rd_r=8b8467a8-6d72-463f-ba12-94f4b08c11d8&pd_rd_w=qtF0H&pd_rd_wg=rqEZk&pf_rd_p=e11d91a6-f987-4c88-b86e-53e4b6a75723&pf_rd_r=5CYDSYW2N4BVTN06ADEF&psc=1&qid=1650997823&sprefix=korean+toys%2Caps%2C92&sr=1-2-270ce31b-afa8-499f-878b-3bb461a9a5a6
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Random-Korean-Traditional-Gonggi-Pebbles/dp/B096L2PQYG/ref=sr_1_7?crid=1RZH7UU9PD0JT&keywords=Korean+toys&qid=1650997823&sprefix=korean+toys%2Caps%2C92&sr=8-7
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/PlaySet-Suitable-Role-Playing-Business-Korean/dp/B09LJJ71D6/ref=sr_1_15?crid=1RZH7UU9PD0JT&keywords=Korean+toys&qid=1650997823&sprefix=korean+toys%2Caps%2C92&sr=8-15
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/BBL-YUTNORI-Board-Game-Traditional/dp/B08BX3MXY8/ref=sr_1_2?keywords=korean+board+games&qid=1650998127&sprefix=korean+boar%2Caps%2C86&sr=8-2https://www.amazon.com/Uncle-Goose-Korean-Blocks-Made/dp/B01CRLHT4Y/ref=sr_1_14?crid=1RZH7UU9PD0JT&keywords=Korean+toys&qid=1650997823&sprefix=korean+toys%2Caps%2C92&sr=8-14
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Chocolate-Pillow-Stuffed-Animal-Creative/dp/B08QMVRS4X/ref=sr_1_21?crid=1RZH7UU9PD0JT&keywords=Korean+toys&qid=1650997823&sprefix=korean+toys%2Caps%2C92&sr=8-21
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/ECTY-Stuffed-Plush-Sitting-Height/dp/B01N3Y55J8/ref=sr_1_38?crid=1RZH7UU9PD0JT&keywords=Korean+toys&qid=1650997823&sprefix=korean+toys%2Caps%2C92&sr=8-38
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/LENITH-Dalgona-Korean-Cookies-Stainless/dp/B0888THQKM/ref=sr_1_48?crid=1RZH7UU9PD0JT&keywords=Korean+toys&qid=1650997823&sprefix=korean+toys%2Caps%2C92&sr=8-48
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Youngchang-Traditional-Musical-Instruments-YS-VN/dp/B06WVJXD35/ref=sr_1_57?crid=1RZH7UU9PD0JT&keywords=Korean+toys&qid=1650997995&sprefix=korean+toys%2Caps%2C92&sr=8-57
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/YIPINJIA-Poppers-Crossbody-Shoulder-Circular/dp/B09JLKSPBY/ref=sr_1_82?crid=1RZH7UU9PD0JT&keywords=Korean+toys&qid=1650997995&sprefix=korean+toys%2Caps%2C92&sr=8-82
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/SHASHIBO-Shifting-Geometric-Transforming-Magnetic/dp/B08FPGR7V7/ref=sr_1_16?crid=34IWO13OW9LB8&keywords=korean+toys+for+teens&qid=1650998052&sprefix=korean+toys+for+teens%2Caps%2C58&sr=8-16
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/LENITH-YUTNORI-Korean-Yunnori-Strategy/dp/B092743WPH/ref=sr_1_3?keywords=korean+board+games&qid=1650998127&sprefix=korean+boar%2Caps%2C86&sr=8-3
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Korean-English-Language-Board-Players/dp/B09Q8FFKQF/ref=sr_1_6?keywords=korean+board+games&qid=1650998127&sprefix=korean+boar%2Caps%2C86&sr=8-6
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Hwatu-Korean-Flower-Hanafuda-HWATOO/dp/B08C2N3C4Y/ref=sr_1_8?keywords=korean+board+games&qid=1650998127&sprefix=korean+boar%2Caps%2C86&sr=8-8
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Exit-Abandoned-Korean-Language-Players/dp/B08XWFRV8F/ref=sr_1_20?keywords=korean+board+games&qid=1650998127&sprefix=korean+boar%2Caps%2C86&sr=8-20
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )

# Traditional
# https://www.amazon.com/February-Mountain-Jewelry-Organizer-Mirror/dp/B08QN9WLY4/ref=sr_1_1?keywords=traditional+korean+gifts&qid=1650998223&sprefix=traditional+korean+%2Caps%2C90&sr=8-1
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Hanbok-Traditional-Adorable-binyeo-Accessory/dp/B07V67F1PD/ref=sr_1_2?keywords=traditional+korean+gifts&qid=1650998223&sprefix=traditional+korean+%2Caps%2C90&sr=8-2
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Make-Buy-Home-Coasters-Traditional/dp/B07W65932G/ref=sr_1_3?keywords=traditional+korean+gifts&qid=1650998223&sprefix=traditional+korean+%2Caps%2C90&sr=8-3
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/JYHOME-Traditional-Korean-Designed-JY001/dp/B09M2L3SKT/ref=sr_1_6?keywords=traditional+korean+gifts&qid=1650998223&sprefix=traditional+korean+%2Caps%2C90&sr=8-6
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Korean-Traditional-Fabric-Bojagi-Wrapping/dp/B09SCV7KGG/ref=sr_1_9?keywords=traditional+korean+gifts&qid=1650998223&sprefix=traditional+korean+%2Caps%2C90&sr=8-9
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/cozymomdeco-Korean-Traditional-Glasses-Perfect/dp/B093ZGKNVK/ref=sr_1_11?keywords=traditional+korean+gifts&qid=1650998223&sprefix=traditional+korean+%2Caps%2C90&sr=8-11
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Korean-Traditional-Womens-Bookmark-Ballpoint/dp/B07KSVRC3W/ref=sr_1_10?keywords=traditional+korean+gifts&qid=1650998223&sprefix=traditional+korean+%2Caps%2C90&sr=8-10
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Korean-Traditional-Hanbok-Bottle-Hotpink/dp/B08P1DQT6Q/ref=sr_1_24?keywords=traditional+korean+gifts&qid=1650998223&sprefix=traditional+korean+%2Caps%2C90&sr=8-24
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Parkssisangbang-Korean-Traditional-Norigae-Folding/dp/B07RPFHL2Q/ref=sr_1_26?keywords=traditional+korean+gifts&qid=1650998223&sprefix=traditional+korean+%2Caps%2C90&sr=8-26
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Korea-Traditional-Korean-Instruments-Haegeum/dp/B06XPD5Y5W/ref=sr_1_2?crid=3NUKDB8IZ4813&keywords=traditional+korean&qid=1650998304&sprefix=traditional+korean%2Caps%2C77&sr=8-2
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Hanbok-Traditional-Birthday-Outfit-Junior/dp/B07SNS34WM/ref=sr_1_5?crid=3NUKDB8IZ4813&keywords=traditional+korean&qid=1650998304&sprefix=traditional+korean%2Caps%2C77&sr=8-5
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Hanbok-Korean-Traditional-National-Costumes/dp/B08Y7QKCPD/ref=sr_1_10?crid=3NUKDB8IZ4813&keywords=traditional+korean&qid=1650998304&sprefix=traditional+korean%2Caps%2C77&sr=8-10
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Handmade-Traditional-Lantern-Oriental-Decorative/dp/B004W3AW2C/ref=sr_1_20?crid=3NUKDB8IZ4813&keywords=traditional+korean&qid=1650998304&sprefix=traditional+korean%2Caps%2C77&sr=8-20
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/koliq-Korean-Traditional-Soju-Glasses/dp/B0991VGMQT/ref=sr_1_24?crid=3NUKDB8IZ4813&keywords=traditional+korean&qid=1650998304&sprefix=traditional+korean%2Caps%2C77&sr=8-24
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Antique-Alive-Traditional-Colorful-Miniature/dp/B008O96YO0/ref=sr_1_32?crid=3NUKDB8IZ4813&keywords=traditional+korean&qid=1650998304&sprefix=traditional+korean%2Caps%2C77&sr=8-32
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Womens-Sleeve-Dragon-Embroidery-Onesize/dp/B07J1QFPQC/ref=sr_1_89?crid=3NUKDB8IZ4813&keywords=traditional+korean&qid=1650998414&sprefix=traditional+korean%2Caps%2C77&sr=8-89
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Korean-Traditional-Bamboo-Folding-Collapsible/dp/B0757L9SP6/ref=sr_1_99?crid=3NUKDB8IZ4813&keywords=traditional+korean&qid=1650998485&sprefix=traditional+korean%2Caps%2C77&sr=8-99
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )


# Health
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_atf_aps_sr_pg1_1?ie=UTF8&adId=A05191761ETCRCXJYU4PM&qualifier=1650998558&id=3333218745604650&widgetName=sp_atf&url=%2FCheongKwanJang-Hong-Sam-Won-Plus%2Fdp%2FB092CN8CWM%2Fref%3Dsr_1_4_sspa%3Fkeywords%3Dkorean%2Bhealth%2Bproducts%26qid%3D1650998558%26sprefix%3Dkorean%2Bhealth%252Caps%252C93%26sr%3D8-4-spons%26psc%3D1%26smid%3DA2KVFU84DVJJ7J
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Premium-Sugar-Free-Balloon-Extract-Concentrate/dp/B087Z6XX8Z/ref=sr_1_7?keywords=korean+health+products&qid=1650998558&sprefix=korean+health%2Caps%2C93&sr=8-7
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_search_thematic_aps_sr_pg1_4?ie=UTF8&adId=A08794353ATTQU3PRFC3O&qualifier=1650998558&id=4026638693702974&widgetName=sp_search_thematic&url=%2FPocheon-10-6oz-6Years-Ginseng-Saponin%2Fdp%2FB079DWLHCD%2Fref%3Dsxin_14_pa_sp_search_thematic_sspa%3Fcv_ct_cx%3Dkorean%2Bhealth%2Bproducts%26keywords%3Dkorean%2Bhealth%2Bproducts%26pd_rd_i%3DB079DWLHCD%26pd_rd_r%3D152aac0c-8b47-4f92-876b-3e0159d4d411%26pd_rd_w%3DKQeiT%26pd_rd_wg%3DtcvxR%26pf_rd_p%3D937f515b-f21e-48f6-8cfd-8695fa84b7c5%26pf_rd_r%3DADEBCTA7A4Y4Y9JZ5V8V%26qid%3D1650998558%26sprefix%3Dkorean%2Bhealth%252Caps%252C93%26sr%3D1-4-a73d1c8c-2fd2-4f19-aa41-2df022bcb241-spons%26psc%3D1
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Korean-Baekje-Geumsan-Pomegranate-Collagen/dp/B08J6JXPB7/ref=sr_1_9?keywords=korean+health+products&qid=1650998558&sprefix=korean+health%2Caps%2C93&sr=8-9
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/LACTO-FIT-ProBiotics-Gold-2000mg-Total/dp/B07JLW1Q6Q/ref=sr_1_24?keywords=korean+health+products&qid=1650998558&sprefix=korean+health%2Caps%2C93&sr=8-24
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Organic-Bellflower-Healthy-Natural-Additives/dp/B08BXCSTD5/ref=sr_1_45?keywords=korean+health+products&qid=1650998558&sprefix=korean+health%2Caps%2C93&sr=8-45
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_aps_sr_pg1_1?ie=UTF8&adId=A0370137219BQMI4REO45&qualifier=1650998558&id=3333218745604650&widgetName=sp_btf&url=%2FKorean-Bellflower-Powder-Origin-Korea%2Fdp%2FB0899ZL6HZ%2Fref%3Dsr_1_55_sspa%3Fkeywords%3Dkorean%2Bhealth%2Bproducts%26qid%3D1650998558%26sprefix%3Dkorean%2Bhealth%252Caps%252C93%26sr%3D8-55-spons%26psc%3D1
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_btf_aps_sr_pg1_1?ie=UTF8&adId=A02028473R15BKSP6KH3I&qualifier=1650998558&id=3333218745604650&widgetName=sp_btf&url=%2FGinseng-Extract-Functional-Antioxidation-Circulation%2Fdp%2FB01LXH3P85%2Fref%3Dsr_1_56_sspa%3Fkeywords%3Dkorean%2Bhealth%2Bproducts%26qid%3D1650998558%26sprefix%3Dkorean%2Bhealth%252Caps%252C93%26sr%3D8-56-spons%26psc%3D1
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/gp/slredirect/picassoRedirect.html/ref=pa_sp_mtf_aps_sr_pg2_1?ie=UTF8&adId=A08403651UWGUDL4TDAEG&qualifier=1650998723&id=8922995860165889&widgetName=sp_mtf&url=%2FJungs-Laboratory-Immunology-Vita-Postbiotics-Students-Digestive%2Fdp%2FB08WPYZBC8%2Fref%3Dsr_1_67_sspa%3Fkeywords%3Dkorean%2Bhealth%2Bproducts%26qid%3D1650998723%26sprefix%3Dkorean%2Bhealth%252Caps%252C93%26sr%3D8-67-spons%26psc%3D1
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Korean-Medicine-Holistic-Healing-Essentials/dp/8997639390/ref=sr_1_3?keywords=korean+medicine&qid=1650998848&sprefix=korean+med%2Caps%2C99&sr=8-3
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Jujube-Ssang-Hwa-Jin-Traditional/dp/B09BBTJ5LY/ref=sr_1_14?keywords=korean+medicine&qid=1650998848&sprefix=korean+med%2Caps%2C99&sr=8-14
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Relief-Octagon-Traditional-Korean-Insect/dp/B01ESTN44C/ref=sr_1_40?keywords=korean+medicine&qid=1650998848&sprefix=korean+med%2Caps%2C99&sr=8-40
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Ginseng-Strength-Ginsenosides-L-Carnitine-BioPerine/dp/B0876J69C2/ref=sr_1_56?keywords=korean+medicine&qid=1650998974&sprefix=korean+med%2Caps%2C99&sr=8-56
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/COSRX-Absorbing-Hydrocolloid-Treatment-Healing/dp/B014SAB948/ref=sr_1_66?keywords=korean+medicine&qid=1650998974&sprefix=korean+med%2Caps%2C99&sr=8-66
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )

# Art
# https://www.amazon.com/Korean-Calligraphy-Custom-Painted-Symbols/dp/B086D8K317/ref=sr_1_10?crid=F5B5MNXNIAYR&keywords=korean+art&qid=1650999068&sprefix=korean+art%2Caps%2C84&sr=8-10
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/PeeNoke-Wall-Art-Traditional-Painting/dp/B08QMXT8MT/ref=sr_1_12?crid=F5B5MNXNIAYR&keywords=korean+art&qid=1650999068&sprefix=korean+art%2Caps%2C84&sr=8-12
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/100-K-Dramas-Scratch-Off-Poster/dp/B09TP9546V/ref=sr_1_11?crid=F5B5MNXNIAYR&keywords=korean+art&qid=1650999068&sprefix=korean+art%2Caps%2C84&sr=8-11
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Classic-Decoration-Painting-Abstract-Frame8x10inch/dp/B09GN28HBD/ref=sr_1_14?crid=F5B5MNXNIAYR&keywords=korean+art&qid=1650999068&sprefix=korean+art%2Caps%2C84&sr=8-14
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Grace-Art-Asian-Scroll-Seasons/dp/B00S0K7HQC/ref=sr_1_15?crid=F5B5MNXNIAYR&keywords=korean+art&qid=1650999068&sprefix=korean+art%2Caps%2C84&sr=8-15
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Korea-1800-Old-Korean-Map/dp/B07HDF75MR/ref=sr_1_20?crid=F5B5MNXNIAYR&keywords=korean+art&qid=1650999068&sprefix=korean+art%2Caps%2C84&sr=8-20
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/LYHNB-Colorful-Alphabet-Educational-Frameless/dp/B08P1VFY7F/ref=sr_1_22?crid=F5B5MNXNIAYR&keywords=korean+art&qid=1650999068&sprefix=korean+art%2Caps%2C84&sr=8-22
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Carved-Korean-Wooden-Decorative-Hanging/dp/B00G7TTSCE/ref=sr_1_48?crid=F5B5MNXNIAYR&keywords=korean+art&qid=1650999068&sprefix=korean+art%2Caps%2C84&sr=8-48
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/PeeNoke-Korean-Traditional-Wooden-Window/dp/B095JY2N6T/ref=sr_1_101?crid=F5B5MNXNIAYR&keywords=korean+art&qid=1650999256&sprefix=korean+art%2Caps%2C84&sr=8-101
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Lunarable-Tapestry-Painting-Chestnut-Multicolor/dp/B07VVRJJ2D/ref=sr_1_4?keywords=korean+decor&qid=1650999379&sprefix=korean+de%2Caps%2C105&sr=8-4
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/YGGQF-Pattern-Characters-Superior-Formative/dp/B085BGXTYS/ref=sr_1_6?keywords=korean+decor&qid=1650999379&sprefix=korean+de%2Caps%2C105&sr=8-6
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/MariaP-12-Metal-Sign-Happiness/dp/B07RG475MC/ref=sr_1_12?keywords=korean+decor&qid=1650999379&sprefix=korean+de%2Caps%2C105&sr=8-12
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Celadon-Pattern-Decorative-Porcelain-Pottery/dp/B005M8GXL0/ref=sr_1_88?keywords=korean+decor&qid=1650999472&sprefix=korean+de%2Caps%2C105&sr=8-88
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )
# https://www.amazon.com/Wooden-Texture-Paintings-Bedroom-Decorations/dp/B092QR6STR/ref=sr_1_200?keywords=korean+decor&qid=1650999739&sprefix=korean+de%2Caps%2C105&sr=8-200
# p = Product.create!('name': '',
#     'description': "",
#     'department': ,
#     'price': )