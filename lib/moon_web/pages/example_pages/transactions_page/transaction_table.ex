defmodule MoonWeb.Pages.ExamplePages.TransactionsPage.TransactionsTable do
  use MoonWeb, :stateful_component

  alias MoonWeb.Pages.ExamplePages.Shared.ListPagination
  alias Moon.Components.TableV2

  prop records, :list, required: true
  prop page, :integer, required: true
  prop sort_by, :tuple, required: true
  prop active_id, :integer, required: true
  prop total_count, :integer, required: true
  prop page_count, :integer, required: true

  def render(assigns) do
    ~F"""
    <div class="max-w-full overflow-scroll">
      <ListPagination
        {=@page}
        {=@page_count}
        {=@total_count}
        on_prev_page="goto_prev_page"
        on_next_page="goto_next_page"
      />
      <TableV2
        columns={[
          %{label: "Customer", field: :customer_name, sortable: true},
          %{label: "Transaction ID", field: :id, sortable: true},
          %{label: "Brand", field: :brand_name, type: :brand},
          %{label: "Create time", field: :create_time, type: :date},
          %{label: "Process time", field: :process_time, type: :date},
          %{label: "Status", field: :status, type: :text},
          %{label: "Tags", field: :tags, type: :text},
          %{label: "Description", field: :description, type: :text},
          %{label: "Amount, EUR", field: :amount_eur, type: :money_amount},
          %{label: "Currency", field: :currency_name, type: :text}
        ]}
        items={@records}
        active_item_id={@active_id}
        sort_by={@sort_by}
        on_select="select_record"
        on_sort="sort_records"
      />
    </div>
    """
  end

  def handle_event("goto_prev_page", _, socket = %{assigns: %{page: page}}) do
    self() |> send({:table, {:paginate, if(page > 1, do: page - 1, else: page)}})
    {:noreply, socket}
  end

  def handle_event("goto_next_page", _, socket = %{assigns: %{page: page}}) do
    self() |> send({:table, {:paginate, page + 1}})
    {:noreply, socket}
  end

  def handle_event(event, _, socket) do
    case String.split(event, ":") do
      ["select_record", id_str] ->
        {id, _} = id_str |> Integer.parse()
        record = socket.assigns.records |> Enum.find(nil, &(&1.id == id))

        if record != nil, do: send(self(), {:table, {:select, record}})
        {:noreply, socket}

      ["sort_records", field_str] ->
        field = field_str |> String.to_atom()

        sort_by =
          case socket.assigns.sort_by do
            {^field, :asc} -> {field, :desc}
            {^field, :desc} -> {field, :asc}
            _ -> {field, :asc}
          end

        send(self(), {:table, {:sort, sort_by}})
        {:noreply, socket}
    end
  end
end