<!DOCTYPE html>
<html>
<head>
    <%@ include file="base.jsp" %>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #c6ffdd, #fbd786, #f7797d); /* ombre background */
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .glass-form {
            width: 100%;
            max-width: 600px;
            padding: 2rem;
            border-radius: 1.25rem;
            background: rgba(255, 255, 255, 0.2);
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.2);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.3);
        }

        .form-title {
            text-align: center;
            font-size: 1.75rem;
            font-weight: bold;
            color: #2c3e50;
            margin-bottom: 1.5rem;
        }

        label {
            font-weight: 500;
            color: #34495e;
        }

        .form-control {
            background-color: rgba(255, 255, 255, 0.6);
            border: 1px solid #ced4da;
            transition: border-color 0.3s ease;
        }

        .form-control:focus {
            background-color: rgba(255, 255, 255, 0.9);
            border-color: #3498db;
            box-shadow: none;
        }

        textarea.form-control {
            resize: vertical;
        }

        .form-actions {
            display: flex;
            justify-content: space-between;
            margin-top: 2rem;
        }

       /* Back Button - Cool Royal Blue with Glow */
		.btn-back {
		    background-color: #1e3c72; /* deep blue */
		    color: #fff;
		    border: none;
		    padding: 0.6rem 1.6rem;
		    font-weight: bold;
		    border-radius: 50px;
		    box-shadow: 0 0 8px rgba(30, 60, 114, 0.4);
		    transition: all 0.3s ease;
		}
		
		.btn-back:hover {
		    background-color: #2a5298;
		    transform: scale(1.05);
		    box-shadow: 0 0 16px rgba(42, 82, 152, 0.8);
		}

        /* Update Button - Gradient Burst */
        .btn-gradient {
            background: linear-gradient(135deg, #ff416c, #ff4b2b);
            color: #fff;
            border: none;
            padding: 0.6rem 1.6rem;
            font-weight: bold;
            border-radius: 50px;
            box-shadow: 0 0 12px rgba(255, 75, 43, 0.4);
            transition: all 0.3s ease;
        }

        .btn-gradient:hover {
            transform: scale(1.05);
            box-shadow: 0 0 20px rgba(255, 75, 43, 0.8);
        }
    </style>
</head>

<body>
    <div class="glass-form">
        <div class="form-title">Edit Product</div>
        <form action="${pageContext.request.contextPath}/save-product" method="post">

            <!-- Hidden Product Id -->
            <input type="hidden" name="prodId" value="${product.prodId}" />

            <!-- Product Name -->
            <div class="mb-3">
                <label class="form-label">Product Name</label>
                <input type="text" name="prodName" class="form-control" value="${product.prodName}" required />
            </div>

            <!-- Product Description -->
            <div class="mb-3">
                <label class="form-label">Product Description</label>
                <textarea name="prodDescription" class="form-control" rows="3" required>${product.prodDescription}</textarea>
            </div>

            <!-- Product Price -->
            <div class="mb-3">
                <label class="form-label">Product Price (&#8377;)</label> 
                <input type="number" name="prodPrice" class="form-control" value="${product.prodPrice}" required />
            </div>

            <!-- Action Buttons -->
            <div class="form-actions">
                <a href="${pageContext.request.contextPath}/" class="btn-back">Back</a>
                <button type="submit" class="btn-gradient">Update</button>
            </div>
        </form>
    </div>
</body>
</html>
