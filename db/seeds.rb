genre_list = {
    "Children" => {
    },
    "Mystery" => {
    },
    "Art" => {
    },
    "Science" => {
    },
    "History" => {
    },
    "Fantasy" => {
    },
    "Romance" => {
    },
    "Religion" => {
    },
    "Parenting" => {
    },
    "Cooking" => {
    }
  }

genre_list.each do |name, genre_hash|
  p = Genre.new
  p.name = name
  p.save
end