module RentalHelper
  def status_badge(rental)
    if rental.scheduled?
      # "<span class='badge badge-primary'>agendada</span>"
      content_tag :span, class: 'badge badge-primary' do
        t(rental.status)
      end
    elsif rental.finalized?
      content_tag :span, class: 'badge badge-success' do
        t(rental.status)
      end
    elsif rental.ongoing?
      content_tag :span, class: 'badge badge-success' do
        t(rental.status)
      end
    elsif rental.in_review?
      content_tag :span, class: 'badge badge-success' do
        t(rental.status)
      end
    end
  end
end
