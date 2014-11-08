class EvidenceItemModerationsController < ModerationsController

  private
  def moderated_object
    EvidenceItem.find_by_id!(params[:evidence_item_id])
  end

  def moderation_params
    params.permit(:explanation, :outcome, :clinical_direction)
  end

  def presenter_class
  	EvidenceItemPresenter
  end

end