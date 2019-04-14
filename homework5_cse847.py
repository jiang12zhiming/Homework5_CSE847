
# coding: utf-8

# In[5]:


import matplotlib.pyplot as plt
get_ipython().run_line_magic('matplotlib', 'inline')

#since this question not require on matlab. I use python for this one

x = [0, -1, -3,1,3]
y = [0, 2, 6,-2,-6]
  
# plotting the points  
plt.plot(x, y, color='green', linestyle='dashed', linewidth = 3, 
         marker='o', markerfacecolor='blue', markersize=12) 
  
# setting x and y axis range 
plt.ylim(-7,7) 
plt.xlim(-4,4) 
  
# naming the x axis 
plt.xlabel('x - axis') 
# naming the y axis 
plt.ylabel('y - axis') 
  
# giving a title to my graph 
plt.title('Principle Component Analysis part 1') 
  
# function to show the plot 
plt.show() 


# 1.
# Above graph shows the plot of the given points. 
# 
# 

# 2.
# The first principle component (−1/square_root(5) , 2/square_root(5) ) 
# which is the vector that has the direction that all data points have the largest variance.
# 
# In this example, the direction that all data points have the largest variance is the slope of the line shown in above graph.  
# 

# 3.
# The second principle component ( 2/square_root(5) , 1/square_root(5)) 
# 
# which is the vector that has the direction that all data points have the least variance.
# 
# In this example, the direction that all data points have the least variance is the slope of the line that is perpendicular to the line shown above graph. 
