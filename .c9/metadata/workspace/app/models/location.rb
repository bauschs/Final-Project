{"filter":false,"title":"location.rb","tooltip":"/app/models/location.rb","undoManager":{"mark":0,"position":0,"stack":[[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":6,"column":0},"action":"remove","lines":["class Location < ActiveRecord::Base","","  belongs_to :event","","end","",""]},{"start":{"row":0,"column":0},"end":{"row":3,"column":3},"action":"insert","lines":["class Location < ActiveRecord::Base","  belongs_to :event","  has_and_belongs_to_many :participants, :autosave => true","end"]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":3,"column":3},"end":{"row":3,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1417746312254,"hash":"83e22892730a6e504a58416abba06a663c20233f"}