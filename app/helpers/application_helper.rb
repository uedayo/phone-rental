module ApplicationHelper

  def tt(label)
    arr = label.split(".")
    if arr.length <= 2
      model = arr[0].constantize
      if arr.length == 1
        return model.model_name.human
      else
        return model.human_attribute_name(arr[1])
      end
    end
    label
  end

  def nought_or_cross(value)
    (value == 1 || value == true) ? t('view.nought') : t('view.cross')
  end

end
