# make the model
source("make-model.R")
#* @get /predict_petal_length
get_predict_length <- function(petal_width){
  # convert the input to a number
  petal_width <- as.numeric(petal_width)
  # create the prediction data frame
  input_data <- data.frame(Petal.Width=as.numeric(petal_width))
  # create the prediction
  predict(model,input_data)
}
