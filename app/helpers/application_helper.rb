module ApplicationHelper
  # Cria um link para visualizar
  #
  # @param path [String] path de visualização
  def link_to_visualizar(path, options = {})
    link_to path,
            class: "btn btn-info  #{options[:class] || 'btn-xs'}",
            title: options[:title] || "Visualizar",
            remote: options[:remote] || false,
            target: options[:target] || '_self',
            style: "color: #FFF; float: none;" do
      "#{ content_tag :span, class: 'fa fa-search' do
        ''
      end} #{options[:label] if options.present? && options[:label]}".html_safe
    end
  end

  # Cria um link para editar
  #
  # @param path [String] path de editar
  # @param options [String] path de editar
  def link_to_editar(path, options = {})
    link_to path,
            class: "btn btn-round btn-#{options[:btn_color] || 'warning'} #{options[:class] || ''}",
            title: options[:label] || "Alterar",
            remote: options[:remote] || false,
            target: options[:target] || '_self',
            label: options[:label],
            style: "color: #FFF; " do
      "#{ content_tag :span, class: "fa fa-#{options[:fa_icon] || 'edit'}" do
        ''
      end} #{options[:label] if options.present? && options[:label]}".html_safe
    end
  end

  # Cria um link para Excluir
  #
  # @param path [String] path de excluir
  def link_to_excluir(path, options = {})
    link_to path,
            method: options[:method] || "delete",
            label: options[:label],
            class: "btn btn-round btn-danger #{options[:class] || ''}",
            remote: options[:remote] || false,
            title: options[:title] || "Excluir",
            data: { confirm: options[:confirm] || "Deseja excluir este registro?",
                    'confirm-button-text': "Confirmar",
                    'cancel-button-text': "Cancelar",
                    'confirm-button-color': "#66CD00",
                    'cancel-button-color': "#ff0000",
                    'sweet-alert-type': "warning",
            },
            style: "color: #FFF; float: none;" do
      "#{ content_tag :span, class: 'fa fa-trash-o' do
        ''
      end} #{options[:label] if options.present? && options[:label]}".html_safe
    end
  end
end
