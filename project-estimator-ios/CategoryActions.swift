//  Created by Westin Schepper on 10/14/17.

import ReSwift
import RealmSwift

// Actions
struct AddCategoryAction: Action {
  let category: Category
}

struct RemoveCategoryAction: Action {
  let category: Category
}

struct UpdateCategoryAction: Action {
  let category: Category
}

// Action Creators
func addCategory (_ category: Category) -> Action {
  category.managedObject.save()

  return AddCategoryAction(category: category)
}

func removeCategory (_ category: Category) -> Action {
  // TODO: Fix this implementation
  category.managedObject.remove(objectType: CategoryObject.self, withId: category.id)

  return RemoveCategoryAction(category: category)
}

func updateCategory (_ category: Category) -> Action {
  category.managedObject.update()

  return UpdateCategoryAction(category: category)
}
