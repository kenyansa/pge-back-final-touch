class Project < ApplicationRecord
    has_many :reviews

    def avg_score
        return 0 unless reviews.size.positive?
        reviews.average(:score).to_f.round(2) * 100
    end
end
