# Transformations applied to dataset in Data Wrangler

This doc listed all transformations (i.e., feature engineering steps) that have been applied to each dataset via Data Wrangler.

## Place dataset (dim_place)
### Step 1 - Drop column
Apply to columns: place_accessibility, place_address, place_ambience, place_area, place_city, place_country, place_cuisine, place_dress_code, place_franchise, place_name, place_other_services, place_payment, place_state, place_zip
### Step 2 - Ordinal encode
Apply to columns: place_alcohol, place_parking_lot, place_price, place_smoking_area
### Step 3 - Find and replace substring
Apply to columns: timestamp (Replacement string 2022-08-25T00:00:00.000Z)

## Rating dataset (fact-rating)
### Step 1 - Drop column
Apply to columns: rating_food, rating_service
### Step 2 - Find and replace substring
Apply to columns: timestamp (Replacement string 2022-08-25T00:00:00.000Z)

## User dataset (dim_user)
### Step 1 - Drop column
Apply to columns: user_activity, user_ambience, user_birth_year, user_color, user_cuisine, user_dress_preference, user_height, user_hijos, user_marital_status, user_payment, user_religion, user_weight
### Step 2 - Fill missing
Apply to columns: user_smoker (Fill value: FALSE)
### Step 3 - Fill missing
Apply to columns: user_transport (Fill value: PUBLIC)
### Step 4 - Fill missing
Apply to columns: user_budget (Fill value: MEDIUM)
### Step 5 - Ordinal encode
Apply to columns: user_drink_level, user_budget, user_transport
### Step 6 - One-hot encode
Apply to columns: user_interest, user_personality (Output style: Columns)
### Step 7 - Move column
Apply to columns: timestamp (Move type: Move to end)
### Step 8 - Find and replace substring
Apply to columns: timestamp (Replacement string 2022-08-25T00:00:00.000Z)