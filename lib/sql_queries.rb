# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_title
  "	Select Projects.title, SUM(Pledges.amount)
    From projects
    Inner Join pledges
    On Projects.id = Pledges.project_id
    Group by Projects.title"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
  "Select Users.name, Users.age, SUM(DISTINCT Pledges.amount)
  From pledges
  Inner Join users
  On Users.id = Pledges.user_id
  Group by Users.name, Pledges.user_id"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  "Select projects.title, (Sum(Pledges.amount)-Projects.funding_goal)
  From projects
  Inner Join pledges
  On Projects.id = Pledges.project_id
  Group By Projects.title
  Having (Sum(Pledges.amount)-Projects.funding_goal) >=0
  Order By (Sum(Pledges.amount)-Projects.funding_goal)"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_summed_amount
  "Select Users.name, SUM(DISTINCT Pledges.amount)
  From pledges
  Inner Join users
  On Users.id = Pledges.user_id
  Group by Users.name
  Order By Sum(DISTINCT Pledges.amount)"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  "Select Projects.category, Pledges.amount
  From projects
  Inner Join pledges
  On Projects.id = Pledges.project_id
  Where Projects.category = 'music'"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
  "Select Projects.category, SUM(Pledges.amount)
  From pledges
  Inner Join projects
  On Projects.id = Pledges.project_id
  Where Projects.category = 'books'"
end
