class Brand < ActiveHash::Base
  self.data = [
    {id: 1, name: 'BALENCIAGA'}, {id: 2, name: 'BOTTEGA VENETA'}, {id: 3, name: 'Burberry'},
    {id: 4, name: 'CELINE'}, {id: 5, name: 'Christian Louboutin'}, {id: 6, name: 'Coach'},
    {id: 7, name: 'FENDI'}, {id: 8, name: 'GIVENCHY'}, {id: 9, name: 'GUCCI'},
    {id: 10, name: 'HERNO'}, {id: 11, name: 'Jil Sander'}, {id: 12, name: 'Jimmy Choo'},
    {id: 13, name: 'LOEWE'}, {id: 14, name: 'MAISON MARGIELA'}, {id: 15, name: 'MANOLO BLAHNIK'},
    {id: 16, name: 'MARNI'}, {id: 17, name: 'MOSCHINO'}, {id: 18, name: 'Off White'},
    {id: 19, name: 'PRADA'}, {id: 20, name: 'Saint Laurent'}, {id: 21, name: 'Salvatore Ferragamo'},
    {id: 22, name: 'SELF PORTRAIT'}, {id: 23, name: 'Stella McCartney'}, {id: 24, name: 'TOD’S'},
    {id: 25, name: 'VALENTINO'}, {id: 26, name: 'VERSACE'}
  ]

  include ActiveHash::Associations
  has_many :Products
end