-- Migration: 0016_order_items_pieces.sql
-- Adds reference 'pieces' (pcs) column to order_items for products measured in kg/kgs.
alter table order_items add column if not exists pieces integer;

grant insert (pieces) on order_items to authenticated;
grant update (pieces) on order_items to authenticated;
