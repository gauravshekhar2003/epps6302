#!/usr/bin/env python
# coding: utf-8

# In[ ]:


import twint
import nest_asyncio
nest_asyncio.apply()


# In[ ]:


# Configure
c = twint.Config()
# c.Username = "JoeBiden"
c.Search = "covid"
c.Store_json = True
c.Limit = 100
c.Output = "ok.json"

# Run
twint.run.Search(c)


# In[ ]:


c = twint.Config()

#c.Username = "JoeBiden"
c.Search = "Trade War"
c.Limit = 10
c.Store_csv = True
c.Output = "tw.csv"

twint.run.Search(c)


# In[ ]:


c = twint.Config()

c.Username = "JoeBiden"
#c.Limit = 10
c.Store_csv = True
c.Output = "jb.csv"

twint.run.Search(c)


# In[ ]:




