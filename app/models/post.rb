class Post < ActiveRecord::Base
<<<<<<< HEAD
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
    validate :is_clickbait?
=======
  validates :title, presence:true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w( Fiction Non-Fiction ) }
  validate :is_clickbait?

  CLICKBAIT_PATTERNS = [
      /Won't Believe/i,
      /Secret/i,
      /Top [0-9]*/i,
      /Guess/i
    ]

    def is_clickbait?
      if CLICKBAIT_PATTERNS.none? { |pat| pat.match title }
        errors.add(:title, "must be clickbait")
      end
    end

>>>>>>> c78fe666b48f58fdbcc480bf6218dff3ca59fc99

end

$clickbaits_words = [
    /Won't Believe/i,
    /Secret/i,
    /Top [0-9]*/i,
    /Guess/i
]

def is_clickbait?
    if $clickbaits_words.none? { |pat| pat.match title }
      errors.add(:title, "must be clickbait")
    end
end