class RentalPresenter < SimpleDelegator

  def status
    if scheduled?
      helper.content_tag :span, class: "badge badge-primary" do
        'agendada'
      end
    elsif finalized?
      helper.content_tag :span, class: "badge badge-success" do
        'finalizada'
      end
    elsif ongoing?
       '<span class="badge badge-primary">em andamento</span>'
    elsif in_review?
       '<span class="badge badge-primary">em revisão</span>'
    end
  end

  # depois que aplicamos SimpleDelegator e chamamos super(rental), podemos
  # remover rental dessas chamadas.
  # def status
  #   if rental.scheduled?
  #      '<span class="badge badge-primary">agendada</span>'
  #   elsif rental.finalized?
  #      '<span class="badge badge-primary">finalizada</span>'
  #   elsif rental.ongoing?
  #      '<span class="badge badge-primary">em andamento</span>'
  #   elsif rental.in_review?
  #      '<span class="badge badge-primary">em revisão</span>'
  #   end
  # end

  private

  def helper
    ApplicationController.helpers
  end
end
