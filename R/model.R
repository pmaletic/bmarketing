#'  Runing decision tree model and ploting it results
#'
#' \code{clean} returns a decision tree model.
#'
#' @param input_data A data.frame containing a target variable named which name is defined as input argument
#' @param target_name A character containing the name of the target variable
#' @return A decision tree model 
#'
#' This means:
#' 
#'   Model: Create a decision tree model to predict if customer signing a term deposit.

#' Model-Plot: We shall implement a function to present a nice representation of the model, e.g. for a decision tree we should plot the tree and respective nodes.
#'   
#' @examples
#' data("bmarketing")
#' dt_model <- model(input_data = bmarketing,target_name="y")
#' @export

model <- function(input_data,target_name) {
  dt_model<- rpart::rpart(as.formula(paste(target_name," ~ .")), data = input_data)
  rpart.plot::rpart.plot(dt_model)
  return (dt_model)
}

