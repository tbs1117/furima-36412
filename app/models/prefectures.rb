class Prefectures < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '北海道' },
    { id: 3, name: '青森県' },
    { id: 4, name: '岩手県' },
    { id: 5, name: '宮城県' },
    { id: 6, name: '秋田県' },
    { id: 7, name: '山形県' },
    { id: 8, name: '福島県' },
    { id: 9, name: '茨城県' },
    { id: 10, name: '栃木県' }
    { id: 9, name: '群馬県' },
    { id: 10, name: '埼玉県' }
    { id: 9, name: '千葉県' },
    { id: 10, name: '東京都' }
    { id: 9, name: '神奈川県' },
    { id: 10, name: '新潟県' }
    { id: 9, name: '富山県' },
    { id: 10, name: '石川県' }
    { id: 9, name: '福井県' },
    { id: 10, name: '山梨県' }
    { id: 9, name: '長野県' },
    { id: 10, name: '岐阜県' }
    { id: 9, name: '静岡県' },
    { id: 10, name: '愛知県' }
    { id: 9, name: '三重県' },
    { id: 10, name: '滋賀県' }
    { id: 9, name: '京都府' },
    { id: 10, name: '大阪府' }
    { id: 9, name: '兵庫県' },
    { id: 10, name: '奈良県' }
    { id: 9, name: '和歌山県' },
    { id: 10, name: '鳥取県' }
    { id: 9, name: '島根県' },
    { id: 10, name: '岡山県' }
    { id: 9, name: '広島県' },
    { id: 10, name: '山口県' }
    { id: 9, name: '徳島県' },
    { id: 10, name: '香川県' }
    { id: 9, name: '愛媛県' },
    { id: 10, name: '高知県' }
    { id: 9, name: '福岡県' },
    { id: 10, name: '佐賀県' }
    { id: 9, name: '長崎県' },
    { id: 10, name: '熊本県' }
    { id: 9, name: '大分県' },
    { id: 10, name: '宮崎県' }
    { id: 9, name: '鹿児島県' },
    { id: 10, name: '沖縄県' }
  ]

  include ActiveHash::Associations
  has_many :items
  end