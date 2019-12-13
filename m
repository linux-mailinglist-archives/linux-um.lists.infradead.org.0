Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0B911DB2E
	for <lists+linux-um@lfdr.de>; Fri, 13 Dec 2019 01:35:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5Gr/b47060c4IT9rQgbg/qF+m2UJ8cJoN3dDOdCTDrc=; b=NgBDZX/rw7H1m4
	tXCTuEE+sAfh3LZmggZrCq1/Y1QhIIp+j384mddtgoCEiI3VR2xVwyRZJFLJBrh5wH5ju/ThufXVN
	PWVaSaKVcTupKT1FEZ9oNtkYPfwzpLOhA62U0O8XSHZ/V0VH2vTrRfxh1hWFXoPgts+/+1g0Pnl6j
	DfKReFeHpBXPytvCcYhmHg0ojZCSnAgfp6bKZRex+oO6bxtGSF038X3Fp73uZOkUyCmOuCns+INHT
	3CQFc3HMk3vEih2xN5Y6dCwXJWZ5bVfy2OL5u+e87E0uHKeQN3MI/9pKhEeQZFkL1B0LRvwL1nGhH
	JQzoCy3HkS9dKaiwBtHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifYvi-0000np-S4; Fri, 13 Dec 2019 00:35:38 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifYvg-0000n7-QH
 for linux-um@lists.infradead.org; Fri, 13 Dec 2019 00:35:38 +0000
Received: by mail-pl1-x64a.google.com with SMTP id b8so285831plz.12
 for <linux-um@lists.infradead.org>; Thu, 12 Dec 2019 16:35:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc
 :content-transfer-encoding;
 bh=HtK9xLwQDzGm+XiM/V3mqEhkctZrVfQExhZP64CAkFM=;
 b=av45X8UBoDasxQtdUR/kaLHvAHnHqZ0KguighfVlEi1MLGDZJyX+X/OctMg/qQNkxx
 aZSq54MBNlXTd0KPfh183tzC4j2Mhx3byjTrz74wtCNVa71EAHmL5lahqvgNrklAZ1Mz
 EI0lEEvl/H1fIx9K0h+JHvPTbciX8XqO/bytl60c7VgAcGaywHcCn73ML038ODDRwYXE
 mnC28CWxlHia2Ydi8Wk9GlK9noE8UsraXZ5SX4h6okl+mda1P+LhpoID6wUY7puYOKjF
 QSHGgrHRvwNnLxPEGYZBjxGnk75KZHMdk1q9njYZRpPblfvdUOpz58YjED1yLtHHZmr0
 /iuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
 :content-transfer-encoding;
 bh=HtK9xLwQDzGm+XiM/V3mqEhkctZrVfQExhZP64CAkFM=;
 b=jgaoABev2LbGuUJPtU0G0NNewWdBAgFC4fOuXO0YT/oTrvyAU9MeHan7qfydE0kcF7
 gtHuLTpUhIfALOKSql13wlAFdfO+EK4L6jOSuUvswlT+Kp5HKnoiTauppozteio6N843
 zoRc08GbBKa5zNzIZc4SD38e64yzD+gPm8rFf2OjUipLLMJ214pRc3Bz9A5HpMTjQ4Lt
 Dv/RPrzqZCrkgIfVeGFR9cpnJkC/jsHVT6PRfmeTaXLYgTN049nPQvVFGh2ntqUSpDoi
 SQjmMVzoThTawSntY5Dn7KTG3vUl+9mUdchJe4PsGSiXHkAqiosrJ/YdbN/SR+qYqfn4
 bShQ==
X-Gm-Message-State: APjAAAUyFBHBzC9vIFOJKOate9gpIBXy2xWdGj7Hhd7BV8wQfa/pW/AL
 WYF1O58jyKiqwMVUGHmFYKW4fa0yh0ou2l85C7s5wA==
X-Google-Smtp-Source: APXvYqwkxYDvjlMgd7Crym7lfFwdMASMN3c0AFKGwJWaLZGshyjLoCuEXqUt6MHkWZ+L6yjQZHGJgoE6qNW3xfcXUZj1MQ==
X-Received: by 2002:a65:42c2:: with SMTP id l2mr13503356pgp.172.1576197334956; 
 Thu, 12 Dec 2019 16:35:34 -0800 (PST)
Date: Thu, 12 Dec 2019 16:35:22 -0800
Message-Id: <20191213003522.66450-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
Subject: [PATCH v1] lkdtm/bugs: fix build error in lkdtm_UNSET_SMEP
From: Brendan Higgins <brendanhiggins@google.com>
To: keescook@chromium.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_163536_878260_EE09D5A7 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: arnd@arndb.de, richard@nod.at, jdike@addtoit.com,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 davidgow@google.com, gregkh@linuxfoundation.org,
 Brendan Higgins <brendanhiggins@google.com>, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

V2hlbiBidWlsZGluZyBBUkNIPXVtIHdpdGggQ09ORklHX1VNTF9YODY9eSBhbmQgQ09ORklHXzY0
QklUPXkgd2UgZ2V0CnRoZSBidWlsZCBlcnJvcnM6Cgpkcml2ZXJzL21pc2MvbGtkdG0vYnVncy5j
OiBJbiBmdW5jdGlvbiDigJhsa2R0bV9VTlNFVF9TTUVQ4oCZOgpkcml2ZXJzL21pc2MvbGtkdG0v
YnVncy5jOjI4ODo4OiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24g4oCY
bmF0aXZlX3JlYWRfY3I04oCZIFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9u
XQogIGNyNCA9IG5hdGl2ZV9yZWFkX2NyNCgpOwogICAgICAgIF5+fn5+fn5+fn5+fn5+fgpkcml2
ZXJzL21pc2MvbGtkdG0vYnVncy5jOjI5MDoxMzogZXJyb3I6IOKAmFg4Nl9DUjRfU01FUOKAmSB1
bmRlY2xhcmVkIChmaXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlvbik7IGRpZCB5b3UgbWVhbiDigJhY
ODZfRkVBVFVSRV9TTUVQ4oCZPwogIGlmICgoY3I0ICYgWDg2X0NSNF9TTUVQKSAhPSBYODZfQ1I0
X1NNRVApIHsKICAgICAgICAgICAgIF5+fn5+fn5+fn5+fgogICAgICAgICAgICAgWDg2X0ZFQVRV
UkVfU01FUApkcml2ZXJzL21pc2MvbGtkdG0vYnVncy5jOjI5MDoxMzogbm90ZTogZWFjaCB1bmRl
Y2xhcmVkIGlkZW50aWZpZXIgaXMgcmVwb3J0ZWQgb25seSBvbmNlIGZvciBlYWNoIGZ1bmN0aW9u
IGl0IGFwcGVhcnMgaW4KZHJpdmVycy9taXNjL2xrZHRtL2J1Z3MuYzoyOTc6MjogZXJyb3I6IGlt
cGxpY2l0IGRlY2xhcmF0aW9uIG9mIGZ1bmN0aW9uIOKAmG5hdGl2ZV93cml0ZV9jcjTigJk7IGRp
ZCB5b3UgbWVhbiDigJhkaXJlY3Rfd3JpdGVfY3I04oCZPyBbLVdlcnJvcj1pbXBsaWNpdC1mdW5j
dGlvbi1kZWNsYXJhdGlvbl0KICBuYXRpdmVfd3JpdGVfY3I0KGNyNCk7CiAgXn5+fn5+fn5+fn5+
fn5+fgogIGRpcmVjdF93cml0ZV9jcjQKClNvIHNwZWNpZnkgdGhhdCB0aGlzIGJsb2NrIG9mIGNv
ZGUgc2hvdWxkIG9ubHkgYnVpbGQgd2hlbgpDT05GSUdfWDg2XzY0PXkgKkFORCogQ09ORklHX1VN
TCBpcyB1bnNldC4KClNpZ25lZC1vZmYtYnk6IEJyZW5kYW4gSGlnZ2lucyA8YnJlbmRhbmhpZ2dp
bnNAZ29vZ2xlLmNvbT4KLS0tCgpUaGlzIHBhdGNoIGlzIHBhcnQgb2YgbXkgbGFyZ2VyIGVmZm9y
dCB0byBnZXQgYWxseWVzY29uZmlnIGNsb3NlciB0bwp3b3JraW5nIGZvciBBUkNIPXVtLiBGb3Ig
bW9yZSBpbmZvcm1hdGlvbiBhYm91dCB0aGF0LCBjaGVja291dCB0aGUgY292ZXIKbGV0dGVyIGZv
ciBhIHJlbGF0ZWQgcGF0Y2hzZXQgaGVyZToKCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwv
MjAxOTEyMTExOTI3NDIuOTU2OTktMS1icmVuZGFuaGlnZ2luc0Bnb29nbGUuY29tLwoKLS0tCiBk
cml2ZXJzL21pc2MvbGtkdG0vYnVncy5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9taXNjL2xrZHRtL2J1
Z3MuYyBiL2RyaXZlcnMvbWlzYy9sa2R0bS9idWdzLmMKaW5kZXggYTRmZGFkMDQ4MDlhOS4uNmMx
YWFiMTc3ZmNlZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9taXNjL2xrZHRtL2J1Z3MuYworKysgYi9k
cml2ZXJzL21pc2MvbGtkdG0vYnVncy5jCkBAIC0yNzgsNyArMjc4LDcgQEAgdm9pZCBsa2R0bV9T
VEFDS19HVUFSRF9QQUdFX1RSQUlMSU5HKHZvaWQpCiAKIHZvaWQgbGtkdG1fVU5TRVRfU01FUCh2
b2lkKQogewotI2lmZGVmIENPTkZJR19YODZfNjQKKyNpZiBJU19FTkFCTEVEKENPTkZJR19YODZf
NjQpICYmICFJU19FTkFCTEVEKENPTkZJR19VTUwpCiAjZGVmaW5lIE1PVl9DUjRfREVQVEgJNjQK
IAl2b2lkICgqZGlyZWN0X3dyaXRlX2NyNCkodW5zaWduZWQgbG9uZyB2YWwpOwogCXVuc2lnbmVk
IGNoYXIgKmluc247Ci0tIAoyLjI0LjEuNzM1LmcwM2Y0ZTcyODE3LWdvb2cKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC11bSBtYWlsaW5nIGxp
c3QKbGludXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXVtCg==
