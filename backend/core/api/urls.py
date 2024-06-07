from rest_framework.routers import DefaultRouter
from django.urls import path, include
from customers.api.views import customer_router


router = DefaultRouter()



router.registry.extend(customer_router.registry)

urlpatterns = [
    path('', include(router.urls)),
]