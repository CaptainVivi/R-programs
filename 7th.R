library(ggplot2)
data(mpg)
mpg$manufacturer <- as.factor(mpg$manufacturer)
mpg$class <- as.factor(mpg$class)
mpg$trans <- as.factor(ifelse(grepl("auto", mpg$trans), "automatic", "manual"))
agg_data <- with(mpg, table(manufacturer, class, trans))
plot_grouped_stacked_bar <- function(data, group_colors, bar_colors, group_labels, bar_labels) {
  bar_width <- 0.8 / ncol(data)
  barplot_heights <- t(apply(data, 1, function(row) row / sum(row)))
  cum_heights <- apply(barplot_heights, 2, cumsum)
  num_bars <- ncol(data)
  num_groups <- nrow(data)
  
  par(mar = c(5, 6, 4, 2) + 0.1)
  plot(0, type = "n", xlim = c(0.5, num_groups + 0.5), ylim = c(0, 1),
       xaxt = "n", ylab = "Proportion", main = "Count of Cars by Manufacturer and Class")
  axis(1, at = 1:num_groups, labels = group_labels, las = 2)
  
  for (i in 1:num_bars) {
    for (j in 1:num_groups) {
      if (i == 1) {
        rect(j - 0.4, 0, j - 0.4 + bar_width, barplot_heights[j, i], col = bar_colors[i], border = NA)
      } else {
        rect(j - 0.4, cum_heights[j, i - 1], j - 0.4 + bar_width, cum_heights[j, i], col = bar_colors[i], border = NA)
      }
    }
  }
  
  legend("topright", legend = bar_labels, fill = bar_colors, title = "Class")
}

# Colors
group_colors <- c("grey", "white")
bar_colors <- rainbow(ncol(agg_data))
plot_grouped_stacked_bar(data = agg_data, 
                         group_colors = group_colors, 
                         bar_colors = bar_colors, 
                         group_labels = rownames(agg_data), 
                         bar_labels = colnames(agg_data))